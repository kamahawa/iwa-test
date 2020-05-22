source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.6.5'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 6.0.2', '>= 6.0.2.1'
# Use mysql as the database for Active Record
gem 'mysql2', '>= 0.4.4'
# Use postgresql as the database for Active Record
gem 'pg', '>= 0.18', '< 2.0'
# Use Puma as the app server
gem 'puma', '~> 4.3'
# Use SCSS for stylesheets
gem 'sass-rails', '>= 6'
# Transpile app-like JavaScript. Read more: https://github.com/rails/webpacker
gem 'webpacker', '~> 4.0'
# Turbolinks makes navigating your web application faster. Read more: https://github.com/turbolinks/turbolinks
gem 'turbolinks', '~> 5'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.7'
# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 4.0'
# Use Active Model has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use Active Storage variant
# gem 'image_processing', '~> 1.2'

# Reduces boot times through caching; required in config/boot.rb
gem 'bootsnap', '>= 1.4.2', require: false

# Forms made easy!
gem 'simple_form', '~> 5.0', '>= 5.0.1'

# Autoload dotenv in Rails.
gem 'dotenv-rails', '~> 2.7', '>= 2.7.5'

# Font-Awesome SASS gem for use in Ruby projects
gem 'font-awesome-sass', '~> 5.12'

# Flexible authentication solution for Rails with Warden
gem 'devise', '~> 4.7', '>= 4.7.1'

# Simple (but safe) token authentication for Rails apps or API with Devise.
gem 'simple_token_authentication', '~> 1.17'

# Middleware that will make Rack-based apps CORS compatible
gem 'rack-cors', '~> 1.1', '>= 1.1.1'

# ActiveModel::Serializers allows you to generate your JSON in an object-oriented and convention-driven manner.
gem 'active_model_serializers', '~> 0.10.10', require: true, github: 'rails-api/active_model_serializers', branch: '0-10-stable'

# Define and serve live-updating Swagger JSON for Ruby apps.
gem 'swagger-blocks', '~> 3.0'

# Mount Swagger UI web console as Rails engine, configure it as you want and write your API documentation in simple YAML files.
# Require < rails 6, but branch 1.1.4 is developing for running rails 6
gem 'swagger_ui_engine', git: 'https://github.com/zuzannast/swagger_ui_engine', branch: "1.1.4-version"

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  
  # rspec-rails is a testing framework for Rails 3+.
  gem 'rspec-rails', '~> 3.9'
  
  # factory_bot_rails provides integration between factory_bot and rails
  gem 'factory_bot_rails', '~> 5.1', '>= 5.1.1'

  # An IRB alternative and runtime developer console
  gem 'pry', '~> 0.12.2'


end

group :development do
  # Access an interactive console on exception pages or by calling 'console' anywhere in the code.
  gem 'web-console', '>= 3.3.0'
  
  # Preloads your application so things like console, rake and tests run faster
  gem 'spring', '~> 2.1'

  # Makes spring watch files using the listen gem
  gem 'spring-watcher-listen', '~> 2.0', '>= 2.0.1'

  # Guard is a command line tool to easily handle events on file system modifications.
  gem 'guard', '~> 2.16', '>= 2.16.1'

  # Automatically reloads your browser when 'view' files are modified.
  gem 'guard-livereload', '~> 2.5', '>= 2.5.2', require: false
end

group :test do
  # Adds support for Capybara system testing and selenium driver
  gem 'capybara', '>= 2.15'
  gem 'selenium-webdriver'
  # Easy installation and use of web drivers to run system tests with browsers
  gem 'webdrivers'
  # Code coverage for Ruby 1.9+ with a powerful configuration library and automatic merging of coverage across test suites
  gem 'simplecov', '~> 0.17.1', require: false, group: :test

  # Strategies for cleaning databases. Can be used to ensure a clean state for testing.
  gem 'database_cleaner', '~> 1.7'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
