Rails.application.routes.draw do
  resources :approvals
  resources :users, only: [:create]
  # post '/login', to: 'auth#create'
  post '/auth', to: 'auth#create'
  get '/current_user', to: 'users#show_current_user'
  get '/profile', to: 'users#profile'

  resources :user_groups
  resources :alt_images
  resources :product_logs
  resources :products
  delete '/products', to: 'products#destroy_all'
  resources :product_loads
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
