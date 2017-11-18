# get necessary gems
require 'rspec'
require 'capybara/poltergeist'
require 'capybara/dsl'
require 'rack/jekyll'
require 'rack/test'

RSpec.configure do |config|
  config.include Capybara::DSL

  # get config info
  $jekyll_config = YAML.load_file('_config.yml')
  $baseurl = $jekyll_config['baseurl'].to_s

  # set up capybara and register the jekyll site via rack
  Capybara.current_driver = :poltergeist
  Capybara.javascript_driver = :poltergeist
  Capybara.app = Rack::Jekyll.new(:force_build => true)
end
