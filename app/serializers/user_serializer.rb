class UserSerializer < ActiveModel::Serializer
  attributes :username, :password, :user_group_id
  has_one :user_group
end
