require 'rails_helper'

RSpec.describe Activity, type: :model do
  it 'is valid with valid attributes' do
    User.create(name: 'Binyam', id: 1, email: 'binyam@gmail.com', password: '123456789')
    purchase = Activity.create(name: 'pikachu-card', id: 1, author_id: 1, amount: 150.0)
    expect(purchase).to be_valid
  end

  it 'is not valid if attributes are not full (missing name)' do
    User.create(id: 1, email: 'binyam@gmail.com', password: '123456789')
    purchase = Activity.create(name: 'pikachu-card', id: 1, author_id: 1, amount: 150.0)
    expect(purchase).to_not be_valid
  end

  it 'is not valid if attributes are not full (missing amount)' do
    User.create(name: 'Binyam', id: 1, email: 'binyam@gmail.com', password: '123456789')
    purchase = Activity.create(name: 'pikachu-card', id: 1, author_id: 1)
    expect(purchase).to_not be_valid
  end
end
