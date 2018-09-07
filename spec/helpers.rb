module Helpers
  MAX_RETRIES = 50

  def front_matter(file)
    begin
      retries ||= 0
    	content = File.read(file).chomp
  	rescue
      puts "Retry: ##{ retries }"
      retry if (retries += 1) < MAX_RETRIES
  	end
    yaml_delimiter = "---"

    front_matter = content[/#{yaml_delimiter}(.*?)#{yaml_delimiter}/m, 1]
    YAML.load(front_matter)
  end

  def image_loader(image_file)
    begin
      retries ||= 0
      content = MiniMagick::Image.open(image_file)
    rescue
      puts "Retry: ##{ retries }"
      retry if (retries += 1) < MAX_RETRIES
    end
    content
  end

  # https://medium.com/@TheSunwave/testing-your-css-styles-with-capybara-556022e0076d
  def computed_style(selector, pseudo = nil, prop)
    page.evaluate_script(
      "window.getComputedStyle(document.querySelector('{selector}'), '#{pseudo}').getPropertyValue('#{prop}')"
    )
  end

end

RSpec.configure do |c|
  c.include Helpers
end