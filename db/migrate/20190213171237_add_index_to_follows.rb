class AddIndexToFollows < ActiveRecord::Migration[5.2]
  def change
    add_index :follows, :follower_id
    add_index :follows, :followee_id
    add_index :follows, [:follower_id, :followee_id], unique:true

  end
end
