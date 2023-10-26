require 'rails_helper'

RSpec.feature 'Splash Page' do
  before do
    'splashes#index'
  end

  scenario 'Must show the app name as a  content' do
    visit root_path
    expect(page).to have_content('Walletguard')
  end

  scenario 'Must have a SIGN IN link' do
    visit root_path
    expect(page).to have_link('SIGN IN')
  end

  scenario 'Must have a SIGN UP link' do
    visit root_path
    expect(page).to have_link('SIGN UP')
  end
end
