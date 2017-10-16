class Product < ApplicationRecord
  belongs_to :category
  has_many :images
  has_many :order_details
end
