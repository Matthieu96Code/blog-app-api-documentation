class Like < ApplicationRecord
  belongs_to :post, foreign_key: 'posts_id', class_name: 'Post'
  belongs_to :author, foreign_key: 'author_id', class_name: 'User'

  after_save :likes_counters

  private

  def likes_counters
    Post.find(posts_id).increment!(:LikesCounter)
  end
end
