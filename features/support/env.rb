require 'capybara'
require 'capybara/cucumber'

#Capybara.configure do |config|
#    config.default_driver = :selenium_chrome
#end

Capybara.register_driver :selenium do |app|
    Capybara::Selenium::Driver.new(app, browser: :firefox)     
end
  
  Capybara.javascript_driver = :firefox
  
  Capybara.configure do |config|
    config.default_max_wait_time = 10 # seconds
    config.default_driver        = :selenium
  end



