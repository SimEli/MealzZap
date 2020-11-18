# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# CODE TO UNCOMMENT WHEN CLOUDINARY READY

# require "open-uri"

puts "Creating recipes..."
Recipe.destroy_all

chicken = {
  name: "Chicken souvlaki",
  description: "Chicken pita",
  preparation_time: "35 min",
  cooking_time: "30 min",
  serves: 5,
}
recipe = Recipe.new(chicken)
recipe.save

pancakes = {
  name: "pancakes with chocolate",
  description: "tasty",
  preparation_time: "35 min",
  cooking_time: "30 min",
  serves: 4,
}
recipe = Recipe.new(pancakes)
recipe.save

pizza = {
  name: "Pizza Margarita",
  description: "very tasty",
  preparation_time: "35 min",
  cooking_time: "30 min",
  serves: 6,
}
recipe = Recipe.new(pizza)
recipe.save


# CODE TO ADD BETWEEN NEW AND SAVE FOR THE IMAGES

# # file = URI.open('https://res.cloudinary.com/de6iqiwqr/image/upload/v1605198442/recipes/chicken curry-benua_da-vinci_fr5lku.jpg')
# recipe = Recipe.new(chicken_curry)
# # recipe.photo.attach(io: file, filename: 'nes.jpg', content_type: 'image/jpg')
# recipe.save

puts "Finished!"

