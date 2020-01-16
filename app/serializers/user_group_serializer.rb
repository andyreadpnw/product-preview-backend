class UserGroupSerializer < ActiveModel::Serializer
  attributes :id, :usergroup_name, :access_level
end
