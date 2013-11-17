require 'spec_helper'

describe Bookmark do
  it 'sorts results by list_number asc by default' do
    bookmark_two = FactoryGirl.create(:bookmark, list_number: 5)
    bookmark = FactoryGirl.create(:bookmark, list_number: 2)

    expect(Bookmark.first).to eq bookmark
  end
end

describe Bookmark, '#full_name' do
  it 'returns the bookmarks book + chapter' do
    bookmark = FactoryGirl.build_stubbed(:bookmark, book: 'John', chapter: 14)

    expect(bookmark.full_name).to eq 'John 14'
  end
end

describe Bookmark, '#advance' do
  context 'within the same book' do
    it 'moves the chapter by one' do
      bookmark = FactoryGirl.create(:bookmark, chapter: 4)

      bookmark.advance
      bookmark.reload

      expect(bookmark.chapter).to eq 5
    end
  end

  context 'at the end of a book' do
    it 'changes the book' do
      bookmark = FactoryGirl.create(:bookmark, book: 'Matthew', chapter: 28)

      bookmark.advance
      bookmark.reload

      expect(bookmark.book).to eq 'Mark'
    end

    it 'moves the chapter to chapter 1' do
      bookmark = FactoryGirl.create(:bookmark, book: 'Matthew', chapter: 28)

      bookmark.advance
      bookmark.reload

      expect(bookmark.chapter).to eq 1
    end
  end
end
