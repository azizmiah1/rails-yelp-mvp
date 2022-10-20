# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

#Restaurant.create(name:'Food place', address:'London', phone_number:'123', category:'fastfood')

require 'faker'

5.times do
  category = ["chinese", "italian", "japanese", "french", "belgian"]
  new_restaurant = Restaurant.create(
    name: Faker::Restaurant.name,
    address: Faker::Address.street_address,
    category: category.sample,
    phone_number: Faker::PhoneNumber.cell_phone_in_e164
  )
  new_restaurant.save
end
# Faker::Name.name      #=> "Christophe Bartell"

# Faker::Internet.email #=> "kirsten.greenholt@corkeryfisher.info"
