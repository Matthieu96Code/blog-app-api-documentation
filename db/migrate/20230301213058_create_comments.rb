class CreateComments < ActiveRecord::Migration[6.0]
  def change
    create_table :comments do |t|
      t.references :author, foreign_key: { to_table: :users }
      t.references :post, foreign_key: true
      t.text :text
      t.datetime :updated_at
      t.datetime :created_at

      t.timestamps
    end

    add_index :comments, :author_id
    add_index :comments, :post_id
  end
end
