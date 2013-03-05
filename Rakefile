require './environment'
require 'csv'

desc 'Import data from csv files into the database'
task :import do
  puts Soup.count
  CSV.foreach('soups-updates.csv'){|row|
    puts row.inspect
    name = row[2]
    price = row[3]
    desc = row[4]
    puts [name, price, desc].inspect
    # blow away data
    # insert new data
  }
  
end
