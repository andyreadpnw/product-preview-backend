class ProductSerializer < ActiveModel::Serializer
  attributes :id, :parent_id, :name, :department, :style_id, :color_id, :product_copy, :product_main_image, :fit, :fabrication, :style_type
  has_one :product_load
end
