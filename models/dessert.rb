class Dessert
  include DataMapper::Resource
  property :id, Serial
  property :number, Integer, :required => false
  property :title,  Text,  :required => true
  property :price, String, :required => true
  property :description, Text, :required => true
  property :image,  String,  :required => false
  property :created_at, DateTime
  property :updated_at, DateTime
end
