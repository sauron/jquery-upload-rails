class Product < ActiveRecord::Base
  has_many :product_pictures

  attr_accessible :title

  accepts_nested_attributes_for :product_pictures
end
