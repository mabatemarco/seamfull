Rails.application.routes.draw do
  resources :reviews
  resources :items
  resources :orders
  resources :choices
  resources :options
  resources :cuisines
  resources :foods
  resources :descriptions
  resources :restaurants
  resources :profiles
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
