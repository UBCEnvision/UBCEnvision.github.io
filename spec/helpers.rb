module Helpers
  def front_matter(file)
    begin
      retries ||= 0
    	content = File.read(file).chomp
  	rescue
      puts "Retry: ##{ retries }"
      retry if (retries += 1) < 5
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
      retry if (retries += 1) < 10
    end
    content
  end

end

RSpec.configure do |c|
  c.include Helpers
end