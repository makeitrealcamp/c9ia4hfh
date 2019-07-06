Rails.application.routes.draw do
  root 'rooms#index'
  
  resources :rooms, except: [:show]
  resources :products
end
