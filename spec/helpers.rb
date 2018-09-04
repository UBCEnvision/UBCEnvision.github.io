module Helpers
  def front_matter(file)
    begin
      retries ||= 0
    	content = File.read(file).chomp
  	rescue
      logger = Rails.logger.new
    	logger.error "OH NO: #{e}"
    	puts Dir.entries(file)
      puts "try ##{ retries }"
      retry if (retries += 1) < 3
  	end
    yaml_delimiter = "---"

    front_matter = content[/#{yaml_delimiter}(.*?)#{yaml_delimiter}/m, 1]
    YAML.load(front_matter)
  end
end

RSpec.configure do |c|
  c.include Helpers
end