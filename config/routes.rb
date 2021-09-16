Rails.application.routes.draw do
  resources :comments
  resources :messages
  resources :conversations
  resources :ratings
  resources :carts_items
  resources :carts
  resources :items
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
