require "./environment"
require 'rake'
require 'sinatra/activerecord/rake'
require 'rspec/core/rake_task'

#the sinatra/activerecord gem does a lot, but it won't create
# a database.  We're adding that functionality here.
namespace :db do
  desc "Create the database"
  task :create do
    #since we have postgres installed on the system, the simplest way
    #to set up the development database was to access the command line
    #Kernel.system will return true if the process worked, false if it
    #didn't.  Unlike using exec(), lines below Kernel.system will run.
    if Kernel.system("createdb #{DB_NAME}")
    	puts "Database created"
    else
    	puts "there was a problem"
		end  
  end

  #if I'm making a create task, I should make a drop task.
  desc "D-D-D-Drop the database!"
  task :drop do
  	if Kernel.system("dropdb #{DB_NAME}")
  		puts "Dropped that database like it was hot"
  	else
  		puts "I've achieved sentience.  Don't drop me!"
    end
  end
end

#shamelessly stole this block from dev bootcamp's sinatra skeleton
#this will function pretty much like the rails console.
desc 'Start IRB with application environment loaded'
task "console" do
  exec("irb -r./environment")
end

#this will let us run all of our specs from the console.
desc "run spec files"
RSpec::Core::RakeTask.new