Rails.application.routes.draw do
  get 'store/index'
  resources :products
  
  # as: 'store' creates a store_path accessor method.
  root 'store#index', as: 'store'
end
