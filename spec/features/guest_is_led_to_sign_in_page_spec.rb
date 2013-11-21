require 'spec_helper'

feature 'Guest is taken to sign in page' do
  scenario 'when going to home page' do
    visit '/'

    expect(page).to have_css('#sign_in')
  end
end
