require 'spec_helper'

describe BibleBooks, '#last_chapter' do
  it 'returnst the last chapter of the book given' do
    bible = BibleBooks.new

    expect(bible.last_chapter('Genesis')).to eq 50
  end

  it 'works with books with numbers like 1 John' do
    bible = BibleBooks.new

    expect(bible.last_chapter('1 John')).to eq 5
  end
end

describe BibleBooks, '#next_book' do
  it 'returns the next book in the list' do
    bible = BibleBooks.new

    expect(bible.next_book('Genesis')).to eq 'Exodus'
  end

  it 'works with books with numbers like 2 John' do
    bible = BibleBooks.new

    expect(bible.next_book('2 John')).to eq '3 John'
  end
end

