require 'sinatra'
require 'sinatra/reloader'
require 'sass'

get '/' do
  @title = 'index'
  erb :index
end
