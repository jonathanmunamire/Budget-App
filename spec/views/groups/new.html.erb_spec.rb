require 'rails_helper'

RSpec.feature 'Group/Category new page', type: :feature do
  let!(:user) { create(:user) }
  let!(:category) { create(:group, name: 'Apple Test', icon: 'https://avatars.githubusercontent.com/u/53082877?s=96&v=4', user:) }
  before do
    sign_in user
    visit new_group_path
  end

  scenario 'Displays new category page' do
    expect(page).to have_current_path(new_group_path)
    expect(page).to have_content('Create New Category')
  end
end
