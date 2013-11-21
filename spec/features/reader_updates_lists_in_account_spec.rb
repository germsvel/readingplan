require 'spec_helper'

feature 'Reader updates list in account page' do
  background do
    @user = User.create(email: 'user@example.com', password: 'secretpassword')
  end

  scenario 'updates list 1' do
    visit '/sign_in'
    within('#sign_in') do
      fill_in 'Email', with: 'user@example.com'
      fill_in 'Password', with: 'secretpassword'
    end
    click_on 'Sign in'

    click_on 'Go to Account'

    expect(page).to have_content('Set lists')
    expect(page).to have_content('Matthew 1')
    within(:css, '#list-1') do
      click_on 'Edit'
    end

    expect(page).to have_content('Edit List 1')

    within(:css, '#edit-list') do
      fill_in 'Book', with: 'Luke'
      fill_in 'Chapter', with: '5'
      click_on 'Update'
    end

    expect(page).to have_content('Set lists')
    expect(page).to have_content('Luke 5')
  end
end
