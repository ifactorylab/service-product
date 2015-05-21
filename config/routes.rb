Rails.application.routes.draw do
  get 'sites/:id/categories', to: 'categories#index'
  post 'sites/:id/categories', to: 'categories#create'

  get 'categories/:id/products', to: 'products#index'
  post 'categories/:id/products', to: 'products#create'

  patch 'products/:id', to: 'products#update'
  patch 'products/:id/image', to: 'products#upload'
end
