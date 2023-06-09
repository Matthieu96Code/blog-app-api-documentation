require 'rails_helper'

RSpec.describe Post, type: :model do
  before(:all) do
    @post_one = Post.new(Title: 'Javascript', Text: 'Great book', CommentsCounter: 0, LikesCounter: 0, author_id: 1)
    @post_two = Post.new
  end
  context 'validations' do
    it 'is not valid without a title' do
      expect(@post_two).to_not be_valid
    end
    it 'Should be valid' do
      expect(@post_one).to be_valid
    end

    it 'Should be invalid if the commentsCounter negative' do
      @post_one.CommentsCounter = -10
      expect(@post_one).to_not be_valid
    end

    it 'should be invalid if the likecounter is negatve' do
      @post_one.LikesCounter = -1
      expect(@post_one).to_not be_valid
    end

    it 'Should be invalid if the title length is more than 250 char' do
      @post_one.Title = "'Lorem ipsum dolor sit amet, consectetuer adipiscing elit.
       Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus
        et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis,
     ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim. Donec.'"
      expect(@post_one).to_not be_valid
    end
  end
end
