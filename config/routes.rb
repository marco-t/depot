Rails.application.routes.draw do
  resources :orders
  # as: 'store' creates a store_path accessor method.
  root 'store#index', as: 'store'
  
  resources :line_items
  resources :carts
  get 'store/index'
  resources :products
  
end
