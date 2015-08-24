Rails.application.routes.draw do
  resources :rooms, except: [:show]


  
end
