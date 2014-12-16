begin
  require 'rspec/core/rake_task'

  RSpec::Core::RakeTask.new(:spec)

  desc "Run all specs"
  task :default do
    exec 'bundle exec rspec -fd --color spec'
  end

  desc "Open an interactive RSpec/Capybara console"
  task :console do
    exec "bundle exec rspec -fd --color spec/support/console_spec.rb"
  end

rescue LoadError
  # no rspec available
end
