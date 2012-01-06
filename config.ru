require 'index'
require 'sinatra'

ENV['RACK_ENV'] = "development"

configure do
  set :environment, :development
  set :root, File.dirname(__FILE__)
  set :public, File.dirname(__FILE__) + '/public'
end	  

run Sinatra::Application
