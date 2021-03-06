# frozen_string_literal: true

source 'https://rubygems.org'
git_source(:github) { |_repo| 'https://github.com/lmjcbs/designvault-api.git' }

ruby '2.6.5'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 6.0.2', '>= 6.0.2.1'
# Use postgresql as the database for Active Record
gem 'pg', '>= 0.18', '< 2.0'
# Use Puma as the app server
gem 'puma', '~> 4.1'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
# gem 'jbuilder', '~> 2.7'
# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 4.0'
gem 'devise'
# Use Active Model has_secure_password
gem 'bcrypt', '~> 3.1.7'

# Use Active Storage variant
# gem 'image_processing', '~> 1.2'

# Reduces boot times through caching; required in config/boot.rb
gem 'bootsnap', '>= 1.4.2', require: false

# Use Rack CORS for handling Cross-Origin Resource Sharing (CORS),making
# cross-origin AJAX possible
gem 'rack-cors'

# Use environment variables to protect sensitive data
gem 'dotenv-rails'

# Enable JSON web tokens for user authentication
# gem 'jwt', '~>2.2.1'

# Add Active model serializers for JSON response formatting
gem 'active_model_serializers'

# Use fast JSON API to serialize json repsonses
gem 'fast_jsonapi'

group :development, :test do
  gem 'factory_bot_rails', '~> 5.1.1'
  gem 'faker', '~> 2.10.2'
  gem 'rspec-rails', '>= 3.9.0'
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platforms: %i[mri mingw x64_mingw]
end

group :development do
  gem 'listen', '>= 3.0.5', '< 3.2'
  # Spring speeds up development by keeping your application running in the background.
  # Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
  # ruby language server
  gem 'solargraph'
  # ruby style formatter
  gem 'rubocop', '~> 0.80.0', require: false
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: %i[mingw mswin x64_mingw jruby]
