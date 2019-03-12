class UserBook < ApplicationRecord
  belongs_to :book
  belongs_to :user

  validates :book_id, presence: true, :uniqueness => { :scope => :user_id }
  validates :user_id, presence: true
end
