Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  # sessions routes 
  get '/login', to: 'sessions#login'
  get '/signup', to: 'sessions#signup'

  resources :profiles
  resources :products
  root 'products#index'
end
