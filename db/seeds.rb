# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."
Le_Beau_Boon = { name: "Le Beau Boon", address: "7 Boundary St, London E2 7JE", phone_number: "06 10 11 12 13", category: "chinese" }
Le_Rat_Creve = { name: "Le Rat Creve", address: "6 Faisanderie St, London E2 7JE", phone_number: "06 10 11 12 14", category: "french" }
Couteau_Tordu = { name: "Couteau Tordu", address: "5  St, London E2 7JE", phone_number: "06 10 11 12 15", category: "italian" }
O_Poulet_Roti = { name: "O Poulet Roti", address: "7 Boundary St, London E2 7JE", phone_number: "06 10 11 12 16", category: "chinese" }
Exquisite = { name: "Exquisite", address: "7 rue du Paradis, London E2 7JE", phone_number: "06 10 11 12 17", category: "japanese" }


[ Le_Beau_Boon, Le_Rat_Creve, Couteau_Tordu, O_Poulet_Roti, Exquisite ].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"