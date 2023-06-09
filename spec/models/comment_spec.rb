require 'rails_helper'

RSpec.describe Comment, type: :model do
  context 'validations' do
    it 'is valid with valid attributes' do
      expect(Comment.new(posts_id: 1, author_id: 1, Text: 'Hi Tom!')).to be_valid
    end
    it 'is not valid without a content' do
      expect(Comment.new).to_not be_valid
    end
  end
  context 'check increment' do
    it 'Should increment by one' do
      expect(Post.find(1).CommentsCounter).to be 1
    end
  end
end
