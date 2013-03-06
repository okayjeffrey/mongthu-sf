require './environment'
require 'sinatra'
require 'thin'

configure :development do  
  DataMapper.auto_upgrade!
end
  
before do
end
  
helpers do
end

get '/' do
  @soups = Soup.all :order => :number.asc
  @sandwiches = Sandwich.all :order => :number.asc
  @desserts = Dessert.all :order => :number.asc
    
  erb :home
end

private
