# get_vegan_recipes_from_api.rake
desc "adding vegan recipes"

task :get_vegan_recipes_from_api do
  url = URI("https://spoonacular-recipe-food-nutrition-v1.p.rapidapi.com/recipes/random?number=5&tags=vegan")

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

  category = Category.find_by(name: "vegan")
  if category.nil?
    category = Category.create!(name: "vegan")
  end

  20.times do |i|
    parsed_recipes = parsed_response["recipes"][i - 1]
    recipe = Recipe.create!(
      # image: parsed_recipes["image"],
      name: parsed_recipes["title"],
      description: parsed_recipes["summary"],
      cooking_time: parsed_recipes["readyInMinutes"],
      serves: parsed_recipes["servings"],
      user: user
    )

    file = URI.open(parsed_recipe["image"])
    recipe.image.attache(io: file, content_type: 'image/png')

    RecipeCategory.create!(
      recipe: recipe,
      category: category
    )

    parsed_recipes["extendedIngredients"].count.times do |p|
      ingredient = Ingredient.create!(
        name: parsed_recipes["extendedIngredients"][p - 1]["name"]
      )

      Dose.create!(
        recipe: recipe,
        ingredient: ingredient,
        quantity: parsed_recipes["extendedIngredients"][p - 1]["amount"]
      )
    end
  end
end
