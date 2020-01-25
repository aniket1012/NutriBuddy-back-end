Rails.application.routes.draw do

  resources :nutrients 
  resources :ingredients
  resources :meals
  resources :users
  resources :user_meals
  resources :meal_ingredients
  resources :ingredient_nutrients

  post '/signup', to: 'users#create', as: "signup"
  post '/login', to: 'users#login', as: "login"

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
