class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :bookmarks

  after_create :set_up_bookmarks


  private

  def set_up_bookmarks
    Bookmark.transaction do
      Bookmark.create(list_number: 1, book: 'Matthew', chapter: 1, user_id: self.id)
      Bookmark.create(list_number: 2, book: 'Genesis', chapter: 1, user_id: self.id)
      Bookmark.create(list_number: 3, book: 'Romans', chapter: 1, user_id: self.id)
      Bookmark.create(list_number: 4, book: '1 Thessalonians', chapter: 1, user_id: self.id)
      Bookmark.create(list_number: 5, book: 'Job', chapter: 1, user_id: self.id)
      Bookmark.create(list_number: 6, book: 'Psalms', chapter: 1, user_id: self.id)
      Bookmark.create(list_number: 7, book: 'Proverbs', chapter: 1, user_id: self.id)
      Bookmark.create(list_number: 8, book: 'Joshua', chapter: 1, user_id: self.id)
      Bookmark.create(list_number: 9, book: 'Isaiah', chapter: 1, user_id: self.id)
      Bookmark.create(list_number: 10, book: 'Acts', chapter: 1, user_id: self.id)
    end
  end
end
