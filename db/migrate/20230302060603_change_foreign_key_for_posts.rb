class ChangeForeignKeyForPosts < ActiveRecord::Migration[7.0]
  def change
    rename_column :posts, :users_id, :AuthorId
    rename_column :posts, :AuthorId, :users_id 
  end
end
