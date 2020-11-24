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
MealPlanner.destroy_all
#User.destroy_all
# pudding = {
#   tag: "breakfast"
#   name: "Coconut-Chia Pudding Breakfast Bowl",
#   description: "Stir together the coconut milk, chia seeds and maple syrup in a cereal bowl. Refrigerate overnight, covered, to allow the seeds to plump and the mixture to thicken into a loose pudding.",
#   cooking_time: "10 min",
#   preparation_time: "10 min",
#   serves: 4,
#   #ingredients: "Coconut milk(2/3), 2 tablespoons chia seeds,1 tablespoon pure maple syrup, 1/4 fresh pineapple chunks, 1/2 kiwi peeled and sliced, 3 tablespoons raspberries, 1 tablespoon roasted almonds, 1 tablespoon coconut flakes.",

#  }
# recipe = Recipe.new(pudding)
# recipe.save


# fish = {
#   tag: "Lunch"
#   name: "Sweet pea fish pie",
#   description: "Traditionally, fish pies have always been about stretching fish a long way, and by using quality frozen fish fillets",
#   cooking_time: "1h 30 min",
#   preparation_time: "1h 45 min",
#   serves: 7,
#   #ingredients:
# # "1 kg potatoes
# # 400 g frozen peas
# # 1 lemon
# # 40 g unsalted butter
# # 2 carrots
# # 2 onions
# # olive oil
# # 500 ml semi-skimmed milk
# # 2 x 150 g frozen salmon fillets , sustainably sourced
# # 2 x 100 g frozen white fish fillets , sustainably sourced
# # 65 g plain flour
# # 100 g frozen spinach
# # 125 g frozen cooked peeled prawns , sustainably sourced
# # 1 heaped teaspoon English mustard
# # 40 g Cheddar cheese
# # sea salt
# # freshly ground black pepper"
#  }
# recipe = Recipe.new(fish)
# recipe.save

# pasta = {
#   tag: "Dinner"
#   name: "Salmon and broccoli pasta",
#   description: "This recipe makes two generous servings or three lighter meals. It’s also very easy to double up.",
#   cooking_time: "15 min",
#   preparation_time: "30 min",
#   serves: 2,
#   #ingredients:
# #   "150g/5½oz dried pasta, any kind
# # 150g/5½oz broccoli, cut into small florets
# # 1 tbsp olive oil
# # 4 spring onions, trimmed and sliced or ½ small onion, very finely sliced
# # 2 skinless salmon fillets (around 120g/4½oz each), cut into roughly 3cm/1¼in chunks
# # good pinch dried chilli flakes (optional)
# # 100ml/3½fl oz double cream
# # ½ small lemon, finely grated zest only
# # salt and freshly ground black pepper."
#  }
# recipe = Recipe.new(pasta)
# recipe.save


# berry = {
#   tag: "Breakfast"
#   name: "Double Berry Breakfast Parfaits",
#   description: "Super quick to make, full of protein and fiber, and naturally sweet, they are perfect for the morning or an afternoon snack and a wonderful post-workout treat!",
#   cooking_time: "10 min",
#   preparation_time: "10 min",
#   serves: 2,
#   #ingredients:
# #   "2 cups plain Greek yogurt

# # 1 ½ cups sliced strawberries

# # 1 pint fresh blueberries

# # Honey, optional

# # Cinnamon, optional"
#  }
# recipe = Recipe.new(berry)
# recipe.save

# chicken = {
#   name: "Creamy chicken stew",
#   description: "Cook this creamy, comforting stew to serve with our smashed mini jacket potatoes. This warming one-pot with chicken, peas and leeks is perfect for a special family meal.",
#   cooking_time: "55 min",
#   preparation_time: "10 min",
#   serves: 6,
#   #ingredients:
# #   "3 leeks , halved and finely sliced
# # 2 tbsp olive oil , plus extra if needed
# # 1 tbsp butter
# # 8 small chicken thighs
# # 500ml chicken stock
# # 1 tbsp Dijon mustard
# # 75g crème fraîche
# # 200g frozen peas
# # 3 tbsp dried or fresh breadcrumbs
# # small bunch of parsley , finely chopped"

#  }
# recipe = Recipe.new(chicken)
# recipe.save


# User.create! email: "admin@icloud.com", password:"123456"

# CODE TO ADD BETWEEN NEW AND SAVE FOR THE IMAGES

#  file = URI.open('https://spoonacular.com/recipeImages/716217-556x370.jpg')
# recipe = Recipe.new(chicken_curry)
#  recipe.image.attach(io: file, filename: 'nes.jpg', content_type: 'image/jpg')
# soup = {
#   tag: "Lunch"
#   name: "Meatball & tomato soup",
#   description: "Get three of your 5-a-day in one serving with this healthy, low-calorie tomato soup. The addition of meatballs and giant couscous means it's filling, too",
#   cooking_time: "15 min",
#   preparation_time: "5 min",
#   serves: 4,
#   #ingredients:
# #   "1½ tbsp rapeseed oil
# # 1 onion, finely chopped
# # 2 red peppers, deseeded and sliced
# # 1 garlic clove, crushed
# # ½ tsp chilli flakes
# # 2 x 400g cans chopped tomatoes
# # 100g giant couscous
# # 500ml hot vegetable stock
# # 12 pork meatballs
# # 150g baby spinach
# # ½ small bunch of basil
# # grated parmesan, to serve (optional)"

#  }
# recipe = Recipe.new(soup)
# recipe.save

#admin = User.create! email: "admin@icloud.com", password:"123456"
#nina = User.create! email: "ninuel@yandex.ru", password: "1234567"

meal_plans = MealPlanner.create!([
  {name: "Plan 1"},
  {name: "Plan 2"},
  {name: "Plan 3"}
])

pudding = Recipe.create!(
  #tag: "Breakfast",
  name: "Coconut-Chia Pudding Breakfast Bowl",
  description: "Stir together the coconut milk, chia seeds and maple syrup in a cereal bowl. Refrigerate overnight, covered, to allow the seeds to plump and the mixture to thicken into a loose pudding.",
  cooking_time: "10 min",
  preparation_time: "10 min",
  serves: 4,
  user_id: User.second.id)


fish = Recipe.create!(
  #tag: "Lunch"
  name: "Sweet pea fish pie",
  description: "Traditionally, fish pies have always been about stretching fish a long way, and by using quality frozen fish fillets",
  cooking_time: "1h 30 min",
  preparation_time: "1h 45 min",
  serves: 7,
  user_id: User.second.id)


pasta = Recipe.create!(
  #tag: "Dinner"
  name: "Salmon and broccoli pasta",
  description: "This recipe makes two generous servings or three lighter meals. It’s also very easy to double up.",
  cooking_time: "15 min",
  preparation_time: "30 min",
  serves: 2,
  user_id: User.second.id)

 berry = Recipe.create!(
  #tag: "Breakfast"
  name: "Double Berry Breakfast Parfaits",
  description: "Super quick to make, full of protein and fiber, and naturally sweet, they are perfect for the morning or an afternoon snack and a wonderful post-workout treat!",
  cooking_time: "10 min",
  preparation_time: "10 min",
  serves: 2,
  user_id: User.second.id)


 chicken = Recipe.create!(
  #tag: "Lunch"
  name: "Creamy chicken stew",
  description: "Cook this creamy, comforting stew to serve with our smashed mini jacket potatoes. This warming one-pot with chicken, peas and leeks is perfect for a special family meal.",
  cooking_time: "55 min",
  preparation_time: "10 min",
  serves: 6,
  user_id: User.second.id)


 soup = Recipe.create!(
  #tag: "Dinner"
  name: "Meatball & tomato soup",
  description: "Get three of your 5-a-day in one serving with this healthy, low-calorie tomato soup. The addition of meatballs and giant couscous means it's filling, too",
  cooking_time: "15 min",
  preparation_time: "5 min",
  serves: 4,
  user_id: User.second.id)


 omelette = Recipe.create!(
  #tag: "Breakfast"
  name: "Basic omelette",
  description: "Tasty breakfast in no time.",
  cooking_time: "10 min",
  preparation_time: "10 min",
  serves: 1,
  user_id: User.second.id)

 rice = Recipe.create!(
  #tag: "Lunch"
  name: "Extra Vegetable Fried Rice",
  description: " This vegetarian recipe features extra vegetables and brown rice. ",
  cooking_time: "15 min",
  preparation_time: "20 min",
  serves: 3,
  user_id: User.second.id)

 pumpkin = Recipe.create!(
  #tag: "Dinner"
  name: "Pumpkin soup",
  description: "This creamy pumpkin soup recipe is a definite crowd pleaser.",
  cooking_time: "25 min",
  preparation_time: "30 min",
  serves: 4,
  user_id: User.second.id)

meal_planner_recipe = MealPlannerRecipe.create([
  { meal_planner_id: meal_plans.first.id, recipe_id: pudding.id },
  { meal_planner_id: meal_plans.first.id, recipe_id: fish.id },
  { meal_planner_id: meal_plans.first.id, recipe_id: pasta.id },
  { meal_planner_id: meal_plans.second.id, recipe_id: berry.id },
  { meal_planner_id: meal_plans.second.id, recipe_id: chicken.id },
  { meal_planner_id: meal_plans.second.id, recipe_id: soup.id },
  { meal_planner_id: meal_plans.third.id, recipe_id: omelette.id },
  { meal_planner_id: meal_plans.third.id, recipe_id: rice.id },
  { meal_planner_id: meal_plans.third.id, recipe_id: Recipe.first.id }
])



ingredients = Ingredient.create([
{name: "brown rice" },

])




# CODE TO ADD BETWEEN NEW AND SAVE FOR THE IMAGES

 #file = URI.open('https://spoonacular.com/recipeImages/716217-556x370.jpg')
# recipe = Recipe.new(chicken_curry)
 #recipe.image.attach(io: file, filename: 'nes.jpg', content_type: 'image/jpg')
# recipe.save
# Recipe.destroy_all
# User.last.destroy

# simon = User.create! username: "siomm", email: "gggg@gmail.com", password: "123456" 
# p simon

shopping_list = ShoppingList.last
dose = Dose.last
dose_shopping_list = DosesShoppingList.create!(shopping_list_id: shopping_list.id, dose_id: dose.id)

p MealPlannerRecipe.all
puts "Finished!"

