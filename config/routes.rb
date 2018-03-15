Rails.application.routes.draw do

  resources :categories
  devise_for :users
  resources :funding_events
  resources :likes
  resources :products
  resources :comments
 
 
  # comments actions
  
  
  
  
  root 'products#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
