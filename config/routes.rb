Rails.application.routes.draw do
  resources :orders
  resources :line_items
  resources :carts

  get 'store/index'
  resources :products do
    get :who_bought, on: :member
  end
  
  # as: 'store' creates a store_path accessor method.
  root 'store#index', as: 'store'
end
