ENV['RAILS_ENV'] ||= 'test'
require 'spec_helper'
require File.expand_path('../../config/environment', __FILE__)
require 'rspec/rails'
require 'capybara/rails'

ActiveRecord::Migration.maintain_test_schema!

RSpec.configure do |config|
  config.fixture_path = "#{::Rails.root}/spec/fixtures"
  config.use_transactional_fixtures = true
  config.infer_spec_type_from_file_location!
end

VCR.configure do |c|
  c.cassette_library_dir = 'spec/cassettes'
  c.hook_into :webmock
  c.configure_rspec_metadata!
<<<<<<< HEAD
=======
  c.filter_sensitive_data('<twilio account sid>') { ENV['TWILIO_ACCOUNT_SID'] }
  c.filter_sensitive_data('<twilio auth token>') { ENV['TWILIO_AUTH_TOKEN'] }
  c.ignore_localhost = true
>>>>>>> 0aa94613a4a24c351f4e40c4e2fd9aed37dc8bcf
end
