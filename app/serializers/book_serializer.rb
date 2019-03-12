class BookSerializer < ActiveModel::Serializer
  attributes :id, :title, :description, :average_rating, :number_of_ratings, :thumbnail, :date_published, :publisher, :subtitle, :authors, :page_count
  has_many :user_books
  has_many :users, through: :user_books
end
