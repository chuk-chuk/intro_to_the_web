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

get '/cat' do
  erb(:index)
end
