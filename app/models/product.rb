class Product < ActiveRecord::Base
  has_many :product_pictures

  attr_accessible :title
end
