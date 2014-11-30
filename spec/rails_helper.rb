ENV['RAILS_ENV'] ||= 'test'

require 'simplecov'
SimpleCov.start 'rails'

require_relative 'spec_helper'
require_relative '../../config/environment'

require 'rspec/rails'
require 'capybara/rspec'
require 'vcr'
require 'sidekiq'
require 'sidekiq/testing/inline'

ActiveRecord::Migration.maintain_test_schema!

RSpec.configure do |config|
  config.include(FactoryGirl::Syntax::Methods)

  config.fixture_path = "#{::Rails.root}/spec/fixtures"

  config.use_transactional_fixtures = false

  config.infer_spec_type_from_file_location!

  config.render_views

  config.before(:suite) do
    DatabaseCleaner.strategy = :transaction
    DatabaseCleaner.clean_with(:truncation)
  end

  config.before(:each) do
    DatabaseCleaner.start
  end

  config.after(:each) do
    DatabaseCleaner.clean
  end

  config.prepend_before(:each, type: :feature) do
    DatabaseCleaner.strategy = :truncation
    Capybara.reset!
    Bullet.start_request
  end

  config.append_after(:each, type: :feature) do
    DatabaseCleaner.strategy = :transaction
    Bullet.perform_out_of_channel_notifications
    Bullet.end_request
  end
end

VCR.configure do |config|
  config.cassette_library_dir = 'spec/fixtures/vcr_cassettes'
  config.hook_into :webmock
  config.ignore_localhost = true
end