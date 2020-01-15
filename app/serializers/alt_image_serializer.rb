class AltImageSerializer < ActiveModel::Serializer
  attributes :id, :image_url
  has_one :products
end
