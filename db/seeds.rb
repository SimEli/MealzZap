# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require "open-uri"

puts "Creating recipes..."
Recipe.destroy_all

chicken_curry = {
  name: "chicken curry",
  description: "The chicken curry, virgin with her child",
  preparation_time: "100mins",
  cooking_time: "60 min",
  # category: "beef",
  serves: "€250",
}
# file = URI.open('https://res.cloudinary.com/de6iqiwqr/image/upload/v1605198442/recipes/chicken curry-benua_da-vinci_fr5lku.jpg')
recipe = Recipe.new(chicken_curry)
# recipe.photo.attach(io: file, filename: 'nes.jpg', content_type: 'image/jpg')
recipe.save

the_thinker =  {
  name: "The Thinker",
  description: "Bronze Sculpture Le Grand Penseur",
  preparation_time: "36cm x 19cm x 30cm",
  cooking_time: "Paris",
  # category: "sculpture",
  serves:  "€200",
}
# file = URI.open('https://res.cloudinary.com/de6iqiwqr/image/upload/v1605198445/recipes/Rodin_e1bc4z.png')
recipe = Recipe.new(the_thinker)
# recipe.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
recipe.save

man_ray = {
  name: "Herma",
  description: "Sculpture polished pewter on wooden base",
  preparation_time: "19cm x 30cm x 24cm",
  cooking_time: "London",
  # category: "sculpture",
  serves:  "€100",
}
# file = URI.open('https://res.cloudinary.com/de6iqiwqr/image/upload/v1605198443/recipes/man_ray_gfwpam.jpg')
recipe = Recipe.new(man_ray)
# recipe.photo.attach(io: file, filename: 'nes.jpg', content_type: 'image/jpg')
recipe.save

pomodoro = {
  name: "Sogno 8",
  description: "Etching and aquatint with embossing and collage, put on collage and framed",
  preparation_time: "193cm x 94cm",
  cooking_time: "Rome",
  # category: "painting",
  serves:  "€250",
}
# file = URI.open('https://res.cloudinary.com/de6iqiwqr/image/upload/v1605198444/recipes/pomodoro_ftnm99.jpg')
recipe = Recipe.new(pomodoro)
# recipe.photo.attach(io: file, filename: 'nes.jpg', content_type: 'image/jpg')
recipe.save

brusselmans = {
  name: "Le Jardin de la maison de Jean",
  description: "Original work, oil on cardboard",
  preparation_time: "40cm x 50cm",
  cooking_time: "Brussels",
  # category: "painting",
  serves: "€120",
}
# file = URI.open('https://res.cloudinary.com/de6iqiwqr/image/upload/v1605198443/recipes/brusselmans_uzybyr.jpg')
recipe = Recipe.new(brusselmans)
# recipe.photo.attach(io: file, filename: 'nes.jpg', content_type: 'image/jpg')
recipe.save

guiette = {
  name: "La Rascasse",
  description: "Original work on paper, oil & mixed media",
  preparation_time: "73cm x 92cm",
  cooking_time: "Amsterdam",
  # category: "painting",
  serves: "€100",
}
# file = URI.open('https://res.cloudinary.com/de6iqiwqr/image/upload/v1605198443/recipes/guiette_vnflez.jpg')
recipe = Recipe.new(guiette)
# recipe.photo.attach(io: file, filename: 'nes.jpg', content_type: 'image/jpg')
recipe.save

dali = {
  name: "Candlesticks",
  description: "Castor & Pollux (pair)",
  preparation_time: "26,5 cm",
  cooking_time: "Madrid",
  # category: "sculpture",
  serves: "€300",
}
# file = URI.open('https://res.cloudinary.com/de6iqiwqr/image/upload/v1605198443/recipes/salvador-dal%C3%AD-candlesticks_phbxme.jpg')
recipe = Recipe.new(dali)
# recipe.photo.attach(io: file, filename: 'nes.jpg', content_type: 'image/jpg')
recipe.save

boetti = {
  name: "Tutto",
  description: "Original work on paper",
  preparation_time: "97cm x 134cm",
  cooking_time: "Florence",
  # category: "painting",
  serves: "€95",
}
# file = URI.open('https://res.cloudinary.com/de6iqiwqr/image/upload/v1605198444/recipes/Alighiero_boetti_tgurt7.png')
recipe = Recipe.new(boetti)
# recipe.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
recipe.save

ting = {
  name: "Seven Geishas",
  description: "Acrylic on Canvas",
  preparation_time: "35.6cm x 47cm",
  cooking_time: "Beijing",
  # category: "painting",
  serves: "€90",
}
# file = URI.open('https://res.cloudinary.com/de6iqiwqr/image/upload/v1605198443/recipes/Walasse_Ting_tlo7sx.png')
recipe = Recipe.new(ting)
# recipe.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
recipe.save

pancakes = {
  name: "Objekteum",
  description: "Oil on Canvas",
  preparation_time: "145.5cm × 145.5cm",
  cooking_time: "New York",
  # category: "painting",
  serves: "€80",
}
# file = URI.open('https://res.cloudinary.com/de6iqiwqr/image/upload/v1605198442/recipes/Screenshot_2020-11-12_at_14.27.50_sbtouv.png')
recipe = Recipe.new(pancakes)
# recipe.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
recipe.save

# [ chicken_curry, the_thinker, man_ray, pomodoro, brusselmans, guiette, dali, boetti, ting, pancakes ].each do |attributes|
#     recipe = Recipe.create!(attributes)
#     puts "Created #{recipe.name}"
#   end
puts "Finished!"