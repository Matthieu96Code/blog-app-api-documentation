class Comment < ApplicationRecord
  belongs_to :post, foreign_key: 'posts_id', class_name: 'Post'
  belongs_to :author, foreign_key: 'author_id', class_name: 'User'

  after_save :comment_counter

  private

  def comment_counter
    Post.find(posts_id).increment!(:CommentsCounter)
  end
end
