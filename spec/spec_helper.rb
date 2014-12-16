require "capybara/rspec"
require "capybara/mechanize"
require "rspec/example_steps"
require "yaml"
require "pry"

require_relative "support/env_config"
require_relative "shared_steps"

$env_config = EnvConfig.new

RSpec.configure do |config|

  config.before(:suite) do
    Capybara.run_server             = false
    Capybara.app                    = true
    Capybara.app_host               = $env_config.app_host
    Capybara.default_selector       = :css
    Capybara.default_wait_time      = 1
    Capybara.ignore_hidden_elements = false
    Capybara.default_driver         = :selenium
    Capybara.javascript_driver      = :selenium
  end

  config.include Capybara::DSL

end

