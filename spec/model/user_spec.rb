require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'User model ' do
    user1 = User.create(name: 'binyam', email: 'binyam@gmail.com')

    before { user1.save }

    it 'name must not empty' do
      user1.name = nil
      expect(user1).to_not be_valid
    end

    it 'email must not empty' do
      user1.email = nil
      expect(user1).to_not be_valid
    end

    it 'user has many categories' do
      expect(user1).to respond_to(:categories)
    end

    it 'user has many activities' do
      expect(user1).to respond_to(:activities)
    end
  end
end
