Rails.application.routes.draw do

  get 'home/private'
  root to: 'home#index'
  resources :charges
  resources :products
  devise_for :users
  get '/profile', to: 'profile#show'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
