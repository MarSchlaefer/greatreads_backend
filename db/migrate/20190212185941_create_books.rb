class CreateBooks < ActiveRecord::Migration[5.2]
  def change
    create_table :books do |t|
      t.string :title
      t.string "description"
      t.integer "average_rating"
      t.integer "number_of_ratings"
      t.string "thumbnail"
      t.string "date_published"
      t.string "publisher"
      t.string "subtitle"
      t.string "authors"
      t.integer "page_count"
      t.string "read_status"

      t.timestamps
    end
  end
end
