require 'rails_helper'

RSpec.describe User, type: :model do
  context 'validations' do
    it 'is valid with valid attributes' do
      expect(User.new(name: 'Peter')).to be_valid
    end
    it 'is not valid without a name' do
      expect(User.new).to_not be_valid
    end
    it 'Is should valid the post counter' do
      expect(User.new(name: 'Chendi', posts_counter: 0)).to be_valid
    end
  end
end
