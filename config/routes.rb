Rails.application.routes.draw do
  resources :rooms, except: [:show]

  root to: "rooms#index"
end
