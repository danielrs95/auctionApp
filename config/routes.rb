Rails.application.routes.draw do
  # get '/products' => 'products#index'
  # get '/products/new' => 'products#new', as: 'new_product'
  # post '/products' => 'products#create'
  # get '/products/:id' => 'products#show', as: 'product'
  # get '/products/:id/edit' => 'products#edit', as: 'edit_product'
  # patch '/products/:id' => 'products#update'
  # delete '/products/:id' => 'products#delete'

  # Todas las rutas anteriores, se pueden reemplazar exactamente con la siguiente linea
  resources :products

  # Landing de la app
  root 'products#index'
end
