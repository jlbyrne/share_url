require "./environment"
require 'rake'
require 'rspec/core/rake_task'

#shamelessly stole this block from dev bootcamp's sinatra skeleton
#this will function pretty much like the rails console.
desc 'Start IRB with application environment loaded'
task "console" do
  exec("irb -r./environment")
end

#this will let us run all of our specs from the console.
desc "run spec files"
RSpec::Core::RakeTask.new