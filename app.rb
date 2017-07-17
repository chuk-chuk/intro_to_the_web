require 'sinatra'

set :session_secret,'super secret'

get '/' do
  "Goodbye World"
end


get '/home' do
  "Moved to the new page"
end

get '/about' do
  "About us"
end

get '/random-cat' do
  @name = ["Amigo", "Oscar", "Viking"].sample
  @colour = 'green'
  erb(:index)
end

get '/named-cat' do
  @name = params[:name]
  @colour = params[:colour]
  erb(:index)
end
