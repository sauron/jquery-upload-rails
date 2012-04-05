JqueryUploadRails::Application.routes.draw do
  get "product_images/index"

  get "product_images/create"

  get "product_images/destroy"

  resources :products, :only => :index

  root :to => "products#index"
end
