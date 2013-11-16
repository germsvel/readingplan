class Bookmark < ActiveRecord::Base
  belongs_to :user

  def full_name
    "#{book} #{chapter}"
  end
end
