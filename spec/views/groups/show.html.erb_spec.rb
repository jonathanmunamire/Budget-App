require 'rails_helper'

RSpec.feature 'Group/Category show page', type: :feature do
  let(:user) { FactoryBot.create(:user) }
  before do
    visit new_user_session_path
    fill_in 'Email', with: user.email
    fill_in 'Password', with: user.password
    click_on 'Log in'
  end

  scenario 'Displays homepage details' do
    expect(page).to have_content('categories')
    expect(page).to have_content('Add Category')
    expect(page).to have_css('li.group-category', count: 0)
  end

  scenario 'Clicking on Add New Category redirects to new category page' do
    click_on 'Add Category'
    sleep(1)
    expect(current_path).to eq(new_group_path)
  end
end