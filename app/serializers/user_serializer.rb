class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :avatar, :bio, :followees, :followers
  has_many :books
end
