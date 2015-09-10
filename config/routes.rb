Rails.application.routes.draw do
  resources :orders
  resources :line_items
  resources :carts
  get 'storefront/index'

  resources :cards
  resources :recipients
  resources :senders
  root to: 'visitors#index'
  devise_for :users
end
