Rails.application.routes.draw do
  get '/products' => 'products#index'
  get '/products/new' => 'products#new', as: 'new_product'
  post '/products' => 'products#create'
end
