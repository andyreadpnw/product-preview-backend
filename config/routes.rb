Rails.application.routes.draw do
  resources :users, only: [:create]
  post '/login', to: 'auth#create'
  get '/profile', to: 'users#profile'
  resources :user_groups
  resources :alt_images
  resources :product_logs
  resources :products
  resources :product_loads
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
