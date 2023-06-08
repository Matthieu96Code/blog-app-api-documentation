class RenameForeignKeyForLikes < ActiveRecord::Migration[7.0]
  def change
    rename_column :likes, :AuthorId, :users_id
    rename_column :likes, :PostId, :posts_id
  end
end
