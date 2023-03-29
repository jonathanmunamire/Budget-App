require 'rails_helper'

RSpec.feature 'Sign up index page', type: :feature do
  let(:user) { FactoryBot.create(:user) }
  before do
    visit new_user_registration_path
  end

  scenario 'Displays sign up details' do
    expect(page).to have_content('Sign up')
    expect(page).to have_css('input#user_name', count: 1)
  end

  scenario 'User cannot sign up with an existing email' do
    fill_in 'Name', with: user.name
    fill_in 'Email', with: user.email
    fill_in 'Password', with: user.password
    click_button 'Sign up'
    sleep(1)
    expect(page).to have_content('Email has already been taken')
  end

  scenario 'User can sign up' do
    fill_in 'Name', with: user.name
    fill_in 'Email', with: "user.#{user.email}"
    fill_in 'Password', with: user.password
    click_button 'Sign up'
    sleep(1)
    expect(page).to have_content('categories')
  end
end