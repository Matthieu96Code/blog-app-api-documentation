class RemoveColumnFromLikes < ActiveRecord::Migration[7.0]
  def change
    remove_column :likes, :AuthorId, :integer
    remove_column :likes, :PostId, :integer
    remove_column :likes, :user_id, :integer
    remove_column :likes, :post_id, :integer
  end
end
