source 'https://rubygems.org'
source 'https://rails-assets.org'

ruby '2.1.5'

# needs to be included before any other gems that use environment variables
gem 'dotenv-rails', groups: [:development, :test]

gem 'rails', '4.1.8'

gem 'pg'

gem 'active_model_serializers'
gem 'bcrypt'
gem 'bootstrap-sass'
gem 'bourbon'
gem 'coffee-rails'
gem 'feedbag'
gem 'feedjira'
gem 'font-awesome-sass'
gem 'foreigner'
gem 'haml-rails'
gem 'jquery-rails'
gem 'rack-mini-profiler'
gem 'sass-rails'
gem 'sidekiq'
gem 'uglifier'
gem 'unicorn'

gem 'rails-assets-underscore'

group :production do
  gem 'rails_12factor'
end

group :development do
  gem 'brakeman', require: false
  gem 'spring'
  gem 'spring-commands-rspec'
end

group :development, :test do
  gem 'bullet'
  gem 'factory_girl_rails'
  gem 'faker'
  gem 'guard'
  gem 'guard-rubocop'
  gem 'haml-lint'
  gem 'rspec-rails'
  gem 'rubocop', require: false
  gem 'shoulda-matchers', require: false
  gem 'teaspoon'
end

group :test do
  gem 'capybara'
  gem 'codeclimate-test-reporter', require: false
  gem 'database_cleaner'
  gem 'guard-rspec'
  gem 'launchy'
  gem 'poltergeist'
  gem 'rb-inotify'
  gem 'timecop'
  gem 'vcr'
  gem 'webmock', require: false
end
