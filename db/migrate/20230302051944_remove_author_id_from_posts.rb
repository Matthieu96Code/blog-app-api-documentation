class RemoveAuthorIdFromPosts < ActiveRecord::Migration[7.0]
  def change
    remove_column :posts, :Authorid, :integer
  end
end
