# Configure Rails Environment
ENV["RAILS_ENV"] = "test"
require "bundler/setup"
Bundler.require(:development, :test)
require 'mailer_fragment_caching'

require File.expand_path("../dummy/config/environment.rb",  __FILE__)
require "rails/test_help"

Rails.backtrace_cleaner.remove_silencers!
