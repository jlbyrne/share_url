#setting this file as the main app file.  
require File.join(File.dirname(__FILE__), 'environment')

set :app_file, __FILE__

configure do
  # This will allow sessions to be stored
  enable :sessions
  #rack sets up the environment hash, which we can access through the ENV constant
  set :session_secret, ENV['SESSION_SECRET'] || "secret stuff here"

  #setting the server to use thin when available, then mongrel or webrick
  set :server, %w[thin mongrel webrick]
end

#to run the app, enter 'shotgun config.ru' from the root folder in the terminal
run Sinatra::Application