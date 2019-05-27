require 'capybara'

require 'capybara/cucumber'

Capybara.configure do |config|

config.default_driver = :selenium

end
