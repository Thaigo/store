Rails.application.routes.draw do  
  root 'pages#index'
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)  
  get 'pages/index'
  get 'shop' => 'pages#shop'

  resources :carts
  resources :orders
  resources :contacts, only: [:new, :create]
  resources :product_items
end
