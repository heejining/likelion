Rails.application.routes.draw do
  resources :funding_events
  resources :likes
  resources :products
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
