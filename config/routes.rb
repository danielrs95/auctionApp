Rails.application.routes.draw do
  get '/products' => 'products#index'
  get '/products/new' => 'products#new', as: 'new_product'
  post '/products' => 'products#create'

  get '/products/:id' => 'products#details', as: 'product'
  get '/products/:id/edit' => 'products#edit'
end
