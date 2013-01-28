require 'rubygems'
require 'sinatra'
require 'thin'

configure do
end
  
before do
end
  
helpers do
end

get '/' do
  erb :home
end

get '/success' do
  erb :success
end
  
private