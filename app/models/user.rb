class User < ApplicationRecord
  belongs_to :user_group
  has_secure_password
  validates :username, uniqueness: { case_sensitive: false }
end
