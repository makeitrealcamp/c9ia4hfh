Rails.application.routes.draw do
  resources :rooms, except: [:show]
  get 'rooms/:id', to: 'rooms#show'
end
