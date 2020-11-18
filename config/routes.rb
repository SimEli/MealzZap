Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :recipes do [:index, :show, :create, :new, :edit, :update]
    resources :doses
    # resources :recipe_categories
  end

  resources :ingredients

  resources :categories

  resources :reviews


  # resources :meal_planners do
  #   resources :meal_planners_recipes
# end
end
