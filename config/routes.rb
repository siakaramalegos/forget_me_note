Rails.application.routes.draw do
  get 'storefront/index'

  resources :cards
  resources :recipients
  resources :senders
  root to: 'visitors#index'
  devise_for :users
end
