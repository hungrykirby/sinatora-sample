require 'sinatra'
require 'sinatra/reloader'
require 'sass'

get '/' do
  @title = 'きゃりかつルーム'
  @is_top = true
  erb :index
end
