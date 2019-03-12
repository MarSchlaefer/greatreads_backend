class UserSerializer < ActiveModel::Serializer
  attributes :username, :avatar, :bio
  has_many :books
end
