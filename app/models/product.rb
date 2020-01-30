class Product < ApplicationRecord
  belongs_to :product_load
  has_many :approval, dependent: :destroy
end
