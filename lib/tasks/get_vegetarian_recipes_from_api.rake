desc "adding vegetarian recipes"

task get_vegetarian_recipes_from_api: :environment do
  require "open-uri"
  url = URI("https://spoonacular-recipe-food-nutrition-v1.p.rapidapi.com/recipes/random?number=5&tags=vegetarian")

  http = Net::HTTP.new(url.host, url.port)
  http.use_ssl = true
  http.verify_mode = OpenSSL::SSL::VERIFY_NONE

  api_key = ENV["API_RECIPE_KEY"]
  request = Net::HTTP::Get.new(url)
  request["x-rapidapi-key"] = api_key
  request["x-rapidapi-host"] = 'spoonacular-recipe-food-nutrition-v1.p.rapidapi.com'

  response = http.request(request)

  user = User.find_by(email: "admin@icloud.com")
  parsed_response = JSON.parse response.read_body

  category = Category.find_by(name: "vegetarian")
  if category.nil?
    category = Category.create!(name: "vegetarian")
  end

  5.times do |i|
    parsed_recipes = parsed_response["recipes"][i - 1]
    recipe = Recipe.create!(
      # image: parsed_recipes["image"],
      name: parsed_recipes["title"],
      description: parsed_recipes["summary"],
      cooking_time: parsed_recipes["readyInMinutes"],
      serves: parsed_recipes["servings"],
      user: user
    )
    p recipe.categories << category
    p parsed_recipes["image"]
    p file = open(parsed_recipes["image"])
    #response = Net::HTTP.get_response(URI.parse(parsed_recipes["image"]))
    #file = StringIO.new(response.body)

    parsed_recipes["extendedIngredients"].count.times do |p|
      p ingredient = Ingredient.create!(
        name: parsed_recipes["extendedIngredients"][p - 1]["name"]
      )

      p Dose.create!(
        recipe: recipe,
        ingredient: ingredient,
        quantity: parsed_recipes["extendedIngredients"][p - 1]["amount"]
      )
    end

    # p recipe.image.attach(io: file, filename: "image.jpg")
  end
end
