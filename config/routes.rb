JqueryUploadRails::Application.routes.draw do

  resources :products
  resources :product_pictures, :only => [:index, :create, :destroy]

  root :to => "products#index"
end
