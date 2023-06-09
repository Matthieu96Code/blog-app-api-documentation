class Post < ApplicationRecord
  belongs_to :author, class_name: 'User', foreign_key: :author_id
  has_many :comments, foreign_key: 'posts_id', class_name: 'Comment'
  has_many :likes, foreign_key: 'posts_id', class_name: 'Like'

  after_save :update_post_counter

  validates :Title, presence: true, length: { maximum: 250 }
  validates :CommentsCounter, :LikesCounter, numericality: { greater_than_or_equal_to: 0 }, allow_nil: false

  def recent_comments
    Comment.where(posts_id: id).order(created_at: :desc).limit(5)
  end

  private

  def update_post_counter
    User.find(author_id).increment!(:posts_counter)
  end
end
