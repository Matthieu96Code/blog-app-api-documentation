class CreateLikes < ActiveRecord::Migration[7.0]
  def change
    create_table :likes do |t|
      t.references :author, foreign_key: { to_table: :users }
      t.references :post, foreign_key: true
      t.datetime :created_at
      t.datetime :updated_at

      t.timestamps
    end

    add_index :likes, :author_id
    add_index :likes, :post_id
  end
end
