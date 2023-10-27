# spec/models/category_spec.rb
require 'rails_helper'

RSpec.describe Category, type: :model do
  it 'is valid with valid attributes' do
    User.create(name: 'Binyam', id: 1, email: 'binyam@gmail.com', password: '123456789')
    category = Category.create(name: 'Sport', id: 2, author_id: 1, icon: 'https://images.pexels.com/photos/18868680/',
                               created_at: 'Wed, 25 Oct 2023 19:42:39.062227000 UTC +00:00')
    expect(category).to be_valid
  end

  it 'is not valid if attributes are not full (misssing name)' do
    User.create(name: 'Binyam', id: 1, email: 'binyam@gmail.com', password: '123456789')
    category = Category.create(id: 2, author_id: 1, icon: 'https://images.pexels.com/photos/18868680/',
                               created_at: 'Wed, 25 Oct 2023 19:42:39.062227000 UTC +00:00')
    expect(category).to_not be_valid
  end

  it 'is not valid if attributes are not full (missing icon)' do
    User.create(name: 'Binyam', id: 1, email: 'binyam@gmail.com', password: '123456789')
    category = Category.create(name: 'Binyam', id: 2, author_id: 1,
                               created_at: 'Wed, 25 Oct 2023 19:42:39.062227000 UTC +00:00')
    expect(category).to_not be_valid
  end
end
