class Bookmark < ActiveRecord::Base
  belongs_to :user

  default_scope { order(list_number: :asc) }

  def full_name
    "#{book} #{chapter}"
  end

  def advance
    bible = BibleBooks.new
    horner_lists = HornerLists.new

    if chapter == bible.last_chapter(book)
      self.book = horner_lists.next_book(book)
      self.chapter = 1
    else
      self.chapter += 1
    end
      self.save
  end
end
