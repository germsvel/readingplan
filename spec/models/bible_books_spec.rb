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

