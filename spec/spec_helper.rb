# get necessary gems
require 'rspec'
require "selenium-webdriver"
require 'capybara/rspec'
require 'rack/jekyll'
require 'rack/test'
require 'pry'
require 'webdrivers'

RSpec.configure do |config|
  config.include Capybara::DSL
  Capybara.server = :webrick

  Webdrivers::Chromedriver.version = '72.0.3626.69'

  config.expect_with :rspec do |expectations|
    expectations.include_chain_clauses_in_custom_matcher_descriptions = true
  end

  config.mock_with :rspec do |mocks|
    mocks.verify_partial_doubles = true
  end

  # get config info
  $jekyll_config = YAML.load_file('_config.yml')
  $baseurl = $jekyll_config['baseurl'].to_s

  # Configure Capybara to use Selenium.
  # https://gist.github.com/deanmarano/aeae5cd2d357fec1b06e30ead397d4e3
  Capybara.register_driver :selenium do |app|
    Capybara::Selenium::Driver.new app, browser: :chrome, options: Selenium::WebDriver::Chrome::Options.new(args: %w[headless disable-gpu])
  end

  Capybara.configure do |config|
    config.default_max_wait_time = 10 # seconds
    config.default_driver        = :selenium
  end  

  # Configure Capybara to load the website through rack-jekyll.
  # (force_build: true) builds the site before the tests are run,
  # so our tests are always running against the latest version
  # of our jekyll site.
  Capybara.app = Rack::Jekyll.new(force_build: true)

end