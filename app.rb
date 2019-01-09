require 'sinatra'
require 'sinatra/reloader'
require 'sass'

get '/' do
  @title = 'きゃりかつルーム'
  erb :index
end
