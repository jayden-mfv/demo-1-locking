source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '3.1.2'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails', branch: 'main'
gem 'rails', '~> 6.1.7', '>= 6.1.7.6'
# Use mysql as the database for Active Record
gem 'mysql2', '~> 0.5'
# Use Puma as the app server
gem 'puma', '~> 5.0'
# Use SCSS for stylesheets
gem 'sass-rails', '>= 6'
# Transpile app-like JavaScript. Read more: https://github.com/rails/webpacker
gem 'webpacker', '~> 5.0'
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
gem 'bootsnap', '>= 1.4.4', require: false

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
end

group :development do
  # Access an interactive console on exception pages or by calling 'console' anywhere in the code.
  gem 'web-console', '>= 4.1.0'
  # Display performance information such as SQL time and flame graphs for each request in your browser.
  # Can be configured to work on production as well see: https://github.com/MiniProfiler/rack-mini-profiler/blob/master/README.md
  gem 'rack-mini-profiler', '~> 2.0'
  gem 'listen', '~> 3.3'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
end

group :test do
  # Adds support for Capybara system testing and selenium driver
  gem 'capybara', '>= 3.26'
  gem 'selenium-webdriver', '>= 4.0.0.rc1'
  # Easy installation and use of web drivers to run system tests with browsers
  gem 'webdrivers'

  # RSpec meta-gem that depends on the other components
  gem 'rspec'

  # RSpec for Rails 6+
  gem 'rspec-rails'

  # RSpec::Parameterized supports simple parameterized test syntax in rspec
  gem 'rspec-parameterized'

  # Making callback tests easy on the fingers and eyes
  gem 'shoulda-callback-matchers'

  # Simple one-liner tests for common Rails functionality
  gem 'shoulda-matchers'

  # Collection cardinality matchers, extracted from rspec-expectations
  gem 'rspec-collection_matchers'

  # Strategies for cleaning databases. Can be used to ensure a clean slate for testing
  gem 'database_cleaner-active_record'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]

# A library for setting up Ruby objects as test data
gem 'factory_bot'

# factory_bot_rails provides integration between factory_bot and rails 5.0 or newer
gem 'factory_bot_rails'

# A library for generating fake data such as names, addresses, and phone numbers
gem 'faker'

# A Ruby static code analyzer and formatter, based on the community Ruby style guide.
gem 'rubocop', require: false

# Advisory locking for ActiveRecord
gem 'with_advisory_lock'

# Retrying code blocks in Ruby
gem 'retryable'

gem 'bootstrap', '~> 5.3', '>= 5.3.3'

gem 'jquery-rails'

gem 'bootstrap_form', '~> 5.4'
