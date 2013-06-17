class Product < ActiveRecord::Base
  attr_accessible :description, :title, :product_images_attributes
  attr_accessor :zip
  has_many :product_images
  accepts_nested_attributes_for :product_images
end
