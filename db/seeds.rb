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
dishoom = {name: "Dishoom", address: "7 Boundary St, London E2 7JE", category: 'italian'}
pizza_east =  {name: "Pizza East", address: "56A Shoreditch High St, London E1 6PQ", category: 'italian'}
tata = {name: "tata", address: "7 Boundary St, London E2 7JE", category: 'italian'}
toto = {name: "toto", address: "7 Boundary St, London E2 7JE", category: 'italian'}
titi = {name: "titi", address: "7 Boundary St, London E2 7JE", category: 'italian'}

[dishoom, pizza_east, tata, titi, toto].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"
