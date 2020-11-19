desc "adding dessert recipes"

task :get_desserts_recipes_from_api do
  url = URI("https://spoonacular-recipe-food-nutrition-v1.p.rapidapi.com/recipes/random?number=5&tags=dessert")

  http = Net::HTTP.new(url.host, url.port)
  http.use_ssl = true
  http.verify_mode = OpenSSL::SSL::VERIFY_NONE

  request = Net::HTTP::Get.new(url)
  request["x-rapidapi-key"] = '833d913f92msh35fb507e9abf92ap11e5a2jsn95cf9d641ef9'
  request["x-rapidapi-host"] = 'spoonacular-recipe-food-nutrition-v1.p.rapidapi.com'

  response = http.request(request)

  user = User.find_by(email: "admin@icloud.com")
  parsed_response = JSON.parse response.read_body

  category = Category.find_by(name: "dessert")
  if category.nil?
    category = Category.create!(name: "dessert")
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
