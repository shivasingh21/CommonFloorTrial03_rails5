Rails.application.routes.draw do
  # get 'search', to: 'properties#search' 
  resources :properties
  resources :users
  root 'properties#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
