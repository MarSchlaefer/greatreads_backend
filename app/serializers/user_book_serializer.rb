class UserBookSerializer < ActiveModel::Serializer
  attributes :id, :book_id, :user_id, :current, :read, :want
end
