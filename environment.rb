require 'rubygems'
require 'data_mapper'
# Require all the model files
Dir.glob("./models/*.rb").each{|model| require model}

if ENV['RACK_ENV'] == 'production'
  DataMapper.setup(:default, ENV['HEROKU_POSTGRESQL_BRONZE_URL'])
else
  require 'do_sqlite3'
  DataMapper.setup :default, "sqlite://#{Dir.pwd}/menu.db"
end
DataMapper.auto_upgrade!
DataMapper.finalize
