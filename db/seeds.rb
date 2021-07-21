# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Cleaning database..."

Restaurant.destroy_all

puts "Creating new restaurants"

categories = ["chinese", "italian", "japanese", "french", "belgian"]

5.times do

  new_restaurant = Restaurant.new(name: Faker::Restaurant.name, address: Faker::Address.street_address, phone_number: Faker::PhoneNumber.cell_phone, category: categories.sample)

  new_restaurant.save!

  puts "Creating another one"

end

puts "Finished seeding :)"
