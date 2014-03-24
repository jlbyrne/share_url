# Set up gems listed in the Gemfile.
ENV['BUNDLE_GEMFILE'] ||= File.expand_path('../Gemfile', __FILE__)
require 'bundler/setup' if File.exists?(ENV['BUNDLE_GEMFILE'])

#require gems
require 'rubygems'

#require ruby modules
require 'uri'
require 'pathname'
require 'logger'

#gems for sinatra
require 'sinatra'
require 'sinatra/reloader' if development?
require 'sinatra/activerecord'

#modules/gems for webpages
require 'erb'

#defining the root folder
APP_ROOT = Pathname.new(File.expand_path('../', __FILE__))
APP_NAME = APP_ROOT.basename.to_s

#requiring all controller and helper files
Dir[APP_ROOT.join('controllers', '*.rb')].each { |file| require file }
Dir[APP_ROOT.join('helpers', '*.rb')].each { |file| require file }

#setting up database and models
# Log queries to STDOUT in development- this will show when
# the app is accessing the database in the server logs
if Sinatra::Application.development?
  ActiveRecord::Base.logger = Logger.new(STDOUT)
end
