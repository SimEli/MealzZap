# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# CODE TO UNCOMMENT WHEN CLOUDINARY READY

require "open-uri"

puts "Creating recipes..."
Recipe.destroy_all

chicken = {
  user_id: 1,
  name: "Chicken souvlaki",
  description: "Chicken pita",
  preparation_time: "35 min",
  cooking_time: "30 min",
  serves: 5,
}
file = URI.open('https://res.cloudinary.com/mealzzap/image/upload/v1605794724/t%C3%A9l%C3%A9chargement_kipjca.jpg')
recipe = Recipe.new(chicken)
recipe.image.attach(io: file, filename: 'nes.jpg', content_type: 'image/jpg')
recipe.save

pancakes = {
  user_id: 1,
  name: "pancakes with chocolate",
  description: "tasty",
  preparation_time: "35 min",
  cooking_time: "30 min",
  serves: 4,
}
file = URI.open('https://res.cloudinary.com/mealzzap/image/upload/v1605794758/t%C3%A9l%C3%A9chargement_1_aqbjej.jpg')
recipe = Recipe.new(pancakes)
recipe.image.attach(io: file, filename: 'ness.jpg', content_type: 'image/jpg')
recipe.save

pizza = {
  user_id: 1,
  name: "Pizza Margarita",
  description: "very tasty",
  preparation_time: "35 min",
  cooking_time: "30 min",
  serves: 6,
}
file = URI.open('https://res.cloudinary.com/mealzzap/image/upload/v1605794807/t%C3%A9l%C3%A9chargement_2_cofosn.jpg')
recipe = Recipe.new(pizza)
recipe.image.attach(io: file, filename: 'nesss.jpg', content_type: 'image/jpg')
recipe.save


# CODE TO ADD BETWEEN NEW AND SAVE FOR THE IMAGES

# # file = URI.open('https://res.cloudinary.com/de6iqiwqr/image/upload/v1605198442/recipes/chicken curry-benua_da-vinci_fr5lku.jpg')
# recipe = Recipe.new(chicken_curry)
# # recipe.photo.attach(io: file, filename: 'nes.jpg', content_type: 'image/jpg')
# recipe.save

puts "Finished!"

