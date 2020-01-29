class Product < ApplicationRecord
  belongs_to :product_load
  has_one :approval
end
