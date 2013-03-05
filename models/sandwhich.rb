class Sandwich
  include DataMapper::Resource
  property :id, Serial
  property :number, String, :required => true
  property :title,  Text,  :required => true
  property :price, String, :required => true
  property :description, Text, :required => false
  property :image,  String,  :required => false
  property :created_at, DateTime
  property :updated_at, DateTime
end
