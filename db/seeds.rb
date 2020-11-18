# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

chicken = {
  name: "Chicken souvlaki",
  description: "Chicken pita",
  cooking_time: "30 min",
  preparation_time: "35 min",
  serves: 5,
}
recipe = Recipe.new(chicken)
recipe.save

pancakes = {
  name: "pancakes with chocolate",
  description: "tasty",
  cooking_time: "30 min",
  preparation_time: "35 min",
  serves: 4,
}
recipe = Recipe.new(pancakes)
recipe.save

pizza = {
  name: "Pizza Margarita",
  description: "very tasty",
  cooking_time: "30 min",
  preparation_time: "35 min",
  serves: 6,
}
recipe = Recipe.new(pizza)
recipe.save

#chicken, pancakes, pizza].each do |attributes|
  #recipe = Recipe.create!(attributes)
   #puts "Created #{recipe.name}"
 #end

