class RemoveColumnFromComments < ActiveRecord::Migration[7.0]
  def change
    remove_column :comments, :AuthorId, :integer
    remove_column :comments, :PostId, :integer
    remove_column :comments, :user_id, :integer
    remove_column :comments, :post_id, :integer
  end
end
