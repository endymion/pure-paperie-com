source 'http://rubygems.org'

gem 'rails', '3.1.0'

# Bundle edge Rails instead:
# gem 'rails',     :git => 'git://github.com/rails/rails.git'

gem 'heroku'
gem 'pg'
gem 'sqlite3'

# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails', "  ~> 3.1.0"
  gem 'coffee-rails', "~> 3.1.0"
  gem 'uglifier'
end

gem 'jquery-rails'

# Use unicorn as the web server
# gem 'unicorn'

# Deploy with Capistrano
# gem 'capistrano'

# To use debugger
# gem 'ruby-debug19', :require => 'ruby-debug'

group(:test, :development) do
  gem 'rspec-rails'
  gem 'capybara'
  gem 'database_cleaner'
  gem 'SystemTimer'
  gem 'watchr'
  gem 'barista'
  gem 'jasmine'
  # The main fork of capybara-webkit tightly depends on an old version of Capybara, but this project
  # needs Capybara >= 1.0.0 because it uses the Capybara integration testing DSL instead of
  # using Cucumber.  Once the main fork of capybara-webkit has been updated to Capybara >= 1.0.0
  # this :git parameter can be removed.
  gem "capybara-webkit", :git => 'https://github.com/skddc/capybara-webkit.git'
  gem 'jasmine-headless-webkit'
  gem "factory_girl_rails", "~> 1.1.rc1"
  gem 'launchy'
  gem 'engineyard'
end