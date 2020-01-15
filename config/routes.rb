Rails.application.routes.draw do
  resources :alt_images
  resources :product_logs
  resources :products
  resources :product_loads
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
