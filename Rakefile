require './environment'
require 'csv'

desc 'Import data from csv files into the database'
task :import do
  soup_file = "soups-updates.csv"
  puts "Removing #{Soup.count} existing soups and importing new ones from #{soup_file}"
  # A transaction keeps us from really fucking things up. If any part of the code
  # fails inside this block the database will "rollback" to where it was before
  # we started!
  Soup.transaction do 
    Soup.destroy # delete all the soups!
    # reads the csv one row at a time.
    CSV.foreach(soup_file){|row|
      puts row.inspect
      number = row[1]
      title = row[2]
      price = row[3]
      desc = row[4]
      image = row[5]
      image = nil if image == "Image here"
      soup = Soup.create(:number => number, :title => title, :price => price, :description => desc, :image => image)
      puts soup.inspect
    }
    puts "Created #{Soup.count} soups!"
  end

  sandwich_file = "sandwiches-updates.csv"
  puts "Removing #{Sandwich.count} existing sandwiches and importing new ones from #{sandwich_file}"
  # A transaction keeps us from really fucking things up. If any part of the code
  # fails inside this block the database will "rollback" to where it was before
  # we started!
  Sandwich.transaction do 
    Sandwich.destroy
    CSV.foreach(sandwich_file){|row|
      puts row.inspect
      number = row[1]
      title = row[2]
      price = row[3]
      desc = row[4]
      image = row[5]
      image = nil if image == "Image here"
      sandwich = Sandwich.create(:number => number, :title => title, :price => price, :description => desc, :image => image)
      puts sandwich.inspect
    }
    puts "Created #{Sandwich.count} sandwiches!"
  end

  dessert_file = "desserts-updates.csv"
  puts "Removing #{Dessert.count} existing desserts and importing new ones from #{dessert_file}"
  # A transaction keeps us from really fucking things up. If any part of the code
  # fails inside this block the database will "rollback" to where it was before
  # we started!
  Dessert.transaction do 
    Dessert.destroy
    CSV.foreach(dessert_file){|row|
      puts row.inspect
      number = row[1]
      title = row[2]
      price = row[3]
      desc = row[4]
      image = row[5]
      image = nil if image == "Image here"
      dessert = Dessert.create(:number => number, :title => title, :price => price, :description => desc, :image => image)
      puts dessert.inspect
    }
    puts "Created #{Dessert.count} desserts!"
  end
end
