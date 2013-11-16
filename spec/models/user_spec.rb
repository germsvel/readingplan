require 'spec_helper'

describe User, 'after_create set_up_bookmarks' do
  it 'sets up 10 bookmarks for user' do
    user = User.create(email: 'user@example.com', password: 'secretpassword')

    expect(user.bookmarks.count).to eq 10
  end
end
