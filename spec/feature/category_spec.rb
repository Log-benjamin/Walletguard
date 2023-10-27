require 'rails_helper'

RSpec.feature 'Category' do
  before(:each) do
    @user1 = User.create(name: 'Binyam', id: 1, email: 'binyam@gmail.com', password: '123456789')
  end

  describe 'Index Page' do
    scenario 'Must show the app name as a  content' do
      sign_in @user1
      visit categories_path
      expect(page).to have_content('All Categories')
    end

    scenario 'Must have a link to add a new category' do
      sign_in @user1
      visit categories_path
      expect(page).to have_link('Add New Category')
    end

    scenario 'Must show There is no category if category is not added' do
      sign_in @user1
      visit categories_path
      expect(page).to have_content('There is no category')
    end

    scenario 'Must show category name if a category is added' do
      sign_in @user1
      @category1 = Category.create(name: 'Sport', id: 2, author_id: 1,
                                   icon: 'https://images.pexels.com/photos/18868680/', created_at: 'Wed, 25 Oct 2023 19:42:39.062227000 UTC +00:00')
      visit categories_path
      expect(page).to have_content('Sport')
    end

    scenario 'Must show category created date if a category is added' do
      sign_in @user1
      @category1 = Category.create(name: 'Sport', id: 2, author_id: 1,
                                   icon: 'https://images.pexels.com/photos/18868680/', created_at: 'Wed, 25 Oct 2023 19:42:39.062227000 UTC +00:00')
      visit categories_path
      expect(page).to have_content('25 October 2023')
    end

    scenario 'Must show a currency symobol if a category is added' do
      sign_in @user1
      @category1 = Category.create(name: 'Sport', id: 2, author_id: 1,
                                   icon: 'https://images.pexels.com/photos/18868680/', created_at: 'Wed, 25 Oct 2023 19:42:39.062227000 UTC +00:00')
      visit categories_path
      expect(page).to have_content('$')
    end
  end

  describe 'Show Page' do
    scenario 'Must show the app name as a  content' do
      sign_in @user1
      @category1 = Category.create(name: 'Pokemon', id: 1, author_id: 1, icon: 'https://pokemon.pexels.com/photos/',
                                   created_at: 'Wed, 20 Nov 2022 19:42:39.062227000 UTC +00:00')
      visit 'categories/1'
      expect(page).to have_link('Log out')
    end

    scenario 'Must show the app name as a  content' do
      sign_in @user1
      @category1 = Category.create(name: 'Pokemon', id: 1, author_id: 1, icon: 'https://pokemon.pexels.com/photos/',
                                   created_at: 'Wed, 20 Nov 2022 19:42:39.062227000 UTC +00:00')
      visit 'categories/1'
      expect(page).to have_link('Add Transaction')
    end

    scenario 'Must show the currency symbol' do
      sign_in @user1
      @category1 = Category.create(name: 'Pokemon', id: 1, author_id: 1, icon: 'https://pokemon.pexels.com/photos/',
                                   created_at: 'Wed, 20 Nov 2022 19:42:39.062227000 UTC +00:00')
      visit 'categories/1'
      expect(page).to have_content('$')
    end

    scenario 'Must show the activity amount' do
      sign_in @user1
      @activity1 = Activity.create(name: 'pikachu-card', id: 1, author_id: 1, amount: 150.0)
      visit 'categories/1'
      expect(page).to have_content(150.0)
    end
  end

  describe 'new Page' do
    scenario 'Must show new category link' do
      sign_in @user1
      visit 'categories/new'
      expect(page).to have_content('New Category')
    end

    scenario 'Must show the logout link' do
      sign_in @user1
      visit 'categories/new'
      expect(page).to have_content('Log out')
    end
  end
end
