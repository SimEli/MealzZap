# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# CODE TO UNCOMMENT WHEN CLOUDINARY READY

# require "open-uri"

# puts "Creating recipes..."
#  #Recipe.destroy_all

#  chicken = {
#    user_id: 1,
#    name: "Chicken souvlaki",
#    description: "Chicken pita",
#    preparation_time: "35 min",
#    cooking_time: "30 min",
#    serves: 5,
#  }
#  recipe = Recipe.new(chicken)
#  recipe.save

# pancakes = {
#   user_id: 1,
#   name: "pancakes with chocolate",
#   description: "tasty",
#   preparation_time: "35 min",
#   cooking_time: "30 min",
#   serves: 4,
# }
# recipe = Recipe.new(pancakes)
# recipe.save

# pizza = {
#   user_id: 1,
#   name: "Pizza Margarita",
#   description: "very tasty",
#   preparation_time: "35 min",
#   cooking_time: "30 min",
#   serves: 6,
# }
# recipe = Recipe.new(pizza)
# recipe.save

# User.create! email: "admin@icloud.com", password:"123456"

# CODE TO ADD BETWEEN NEW AND SAVE FOR THE IMAGES

#  file = URI.open('https://spoonacular.com/recipeImages/716217-556x370.jpg')
# recipe = Recipe.new(chicken_curry)
#  recipe.image.attach(io: file, filename: 'nes.jpg', content_type: 'image/jpg')
# recipe.save
# Recipe.destroy_all
# User.last.destroy

# simon = User.create! username: "siomm", email: "gggg@gmail.com", password: "123456" 
# p simon

shopping_list = ShoppingList.last
dose = Dose.last
dose_shopping_list = DosesShoppingList.create!(shopping_list_id: shopping_list.id, dose_id: dose.id)

puts "Finished!"

