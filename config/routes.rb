Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :recipes do [:index, :show, :create, :new, :edit, :update]
    resources :doses
    resources :recipe_steps
    post 'add_recipe_shopping_list', to: "recipes#add_shopping_list", as: "add_shopping_list"

  end
  get 'my_cookbook', to: "recipes#my_index"


  resources :categories

  resources :meal_planners

  resources :user_meal_planners

  resources :meal_planners_recipes

  resources :tags

  resources :shopping_lists

  resources :users

  resources :user_recipes


end

