require 'spec_helper'

describe BibleBooks, '#last_chapter' do
  it 'returnst the last chapter of the book given' do
    bible = BibleBooks.new

    expect(bible.last_chapter('Genesis')).to eq 50
  end

  it 'try with 1 john' do
    pending('must add something so that 1 John is transformed into first_john')
  end
end

describe BibleBooks, '#next_book' do
  it 'returns the next book in the list' do
    bible = BibleBooks.new

    expect(bible.next_book('Genesis')).to eq 'Exodus'
  end
end

