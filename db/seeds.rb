# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."
lef = {name: "Lef", address: "Nieuwkuikseweg 2", category: "italian"}
dadawan =  {name: "Dadawan", address: "56A Shoreditch High St, London E1 6PQ", category: "chinese"}

[lef, dadawan].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end

puts "Finished!"
