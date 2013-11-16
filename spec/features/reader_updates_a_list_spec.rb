require 'spec_helper'

feature 'Reader updates a list' do
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

    expect(page).to have_content 'Matthew 1'
    expect(page).to have_content 'Genesis 1'
    within('li#list-1') do
      click_on 'Next'
    end
    expect(page).to have_content 'Matthew 2'
  end
end
