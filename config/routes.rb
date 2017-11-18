Rails.application.routes.draw do
  resources :rooms
  root 'rooms#index'
end
