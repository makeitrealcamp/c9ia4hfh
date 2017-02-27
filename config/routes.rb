Rails.application.routes.draw do
	root 'rooms#index'
  resources :rooms, except: [:show]
end
