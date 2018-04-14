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
  
  
  
  # temp email
  # get '/contact_email' => 'products#send_contact_email'
  get '/contact_email' => 'contactform#contactform'
  post '/contact_email' => 'contactform#send_contact_email'
  post '/likes/:product_id' => 'likes#like'
  delete '/products/:product_id' => 'products#destroy'
  get 'liked/:product_id' => 'likes#like'
  get '/myaccount' => 'myaccount#myaccount'
  get '/aboutus' => 'aboutus#aboutus'
  get '/useraccount/:user_id' => 'useraccount#useraccount'
  get '/categories/:category_id' => 'categories#show'
  
end
