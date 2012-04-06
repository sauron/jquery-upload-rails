JqueryUploadRails::Application.routes.draw do

  resources :products, :only => :index
  resources :product_pictures, :only => [:index, :create, :destroy]

  root :to => "products#index"
end
