class Like < ApplicationRecord
  belong_to :post, foreign_key: 'posts_id', class_name: 'Post'
  belong_to :author, foreign_key: 'author_id', class_name: 'User'

  after_save :likes_counters

  private

  def likes_counters
    Post.find(posts_id).increment!(:LikesCounter)
  end
end
