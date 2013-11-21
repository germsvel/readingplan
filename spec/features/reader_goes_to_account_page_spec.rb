require 'spec_helper'

feature 'Reader goes to accounts page from home page' do
  background do
    user = User.create(email: 'user@example.com', password: 'secretpassword')
  end

  scenario 'with valid user' do
    visit '/sign_in'
    within('#sign_in') do
      fill_in 'Email', with: 'user@example.com'
      fill_in 'Password', with: 'secretpassword'
    end

    click_button 'Sign in'

    expect(page).to have_css('#account-btn')

    click_on 'Go to Account'

    expect(page).to have_content('Set lists')
  end
end
