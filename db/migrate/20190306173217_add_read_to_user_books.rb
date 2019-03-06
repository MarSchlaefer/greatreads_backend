class AddReadToUserBooks < ActiveRecord::Migration[5.2]
  def change
    add_column :user_books, :current, :boolean
    add_column :user_books, :read, :boolean
    add_column :user_books, :want, :boolean
  end
end
