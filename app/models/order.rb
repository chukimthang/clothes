class Order < ApplicationRecord
  belongs_to :user
  belongs_to :receiver
  has_many :order_details
end
