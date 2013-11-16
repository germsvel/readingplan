require 'spec_helper'

feature 'Signing in' do
  background do
    User.create(email: 'user@example.com', password: 'secretpassword')
  end

  scenario 'With valid user' do
    visit '/sign_in'
    within('#sign_in') do
      fill_in 'Email', with: 'user@example.com'
      fill_in 'Password', with: 'secretpassword'
    end

    click_button 'Sign in'
    expect(page).to have_content 'Welcome user@example.com'
  end

end
