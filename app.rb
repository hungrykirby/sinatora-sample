require 'sinatra'
require 'sinatra/reloader'
require 'sass'

get '/' do
  @title = 'きゃりかつルーム'
  @is_top = true
  erb :index
end

get '/works/*' do |worksname|
  @title = 'きゃりかつルーム'
  @name = worksname + 'という名前の作品は見つかりませんでした!'
  erb :works
end

not_found do
  "Whoops! You requested a route that wasn't available."
end

error do
  "Y U NO WORK?"
end
