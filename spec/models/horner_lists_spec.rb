require 'spec_helper'

describe HornerLists, '#next_book' do
  it 'returns the next book in the list' do
    lists = HornerLists.new

    expect(lists.next_book('Genesis')).to eq 'Exodus'
  end

  it 'works with books with numbers like 2 John' do
    lists = HornerLists.new

    expect(lists.next_book('2 John')).to eq '3 John'
  end
end

describe HornerLists, '#list' do
  it 'returns the books in horners list' do
    list = HornerLists.new.list(2)

    expect(list.first).to eq 'Genesis'
  end
end
