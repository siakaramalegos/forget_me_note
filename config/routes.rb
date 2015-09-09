Rails.application.routes.draw do
  resources :cards
  resources :recipients
  resources :senders
  root to: 'visitors#index'
  devise_for :users
end
