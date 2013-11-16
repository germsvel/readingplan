require 'spec_helper'

describe Bookmark, '#full_name' do
  it 'returns the bookmarks book + chapter' do
    bookmark = FactoryGirl.build_stubbed(:bookmark, book: 'John', chapter: 14)

    expect(bookmark.full_name).to eq 'John 14'
  end
end
