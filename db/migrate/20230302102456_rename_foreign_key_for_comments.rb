class RenameForeignKeyForComments < ActiveRecord::Migration[7.0]
  def change
    rename_column :comments, :AuthorId, :users_id
    rename_column :comments, :PostId, :posts_id
  end
end
