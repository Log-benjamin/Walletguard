require 'rails_helper'

RSpec.feature 'Category' do
  before(:each) do
    @user1 = User.create(name: 'Binyam', id: 1, email: 'binyam@gmail.com', password: '123456789')
  end

  describe 'new Page' do
    scenario 'Must show the form page for new activities' do
      sign_in @user1
      visit 'activities/new'
      expect(page).to have_content('New Transaction')
    end

    scenario 'Must show the Log out link' do
      sign_in @user1
      visit 'activities/new'
      expect(page).to have_link('Log out')
    end

    scenario 'Must show the form page category drop option' do
      sign_in @user1
      visit 'activities/new'
      expect(page).to have_content('Category:')
    end
  end
end
