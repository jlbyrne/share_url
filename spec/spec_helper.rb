#require this file in all _spec.rb files for them to run

require 'rack/test'
require 'rspec'

#we're including the environment file rather than the config.ru file
require File.join(File.dirname(__FILE__), '..', 'environment')

#setting the rack environment to test
ENV['RACK_ENV'] = 'test'

