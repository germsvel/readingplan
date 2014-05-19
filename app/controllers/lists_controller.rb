class ListsController < ApplicationController
  before_filter :authenticate_user!

  def index
    @bookmarks = current_user.bookmarks
  end

  def edit
    @bookmark = Bookmark.find(params[:id])
    list_number = @bookmark.list_number
    @list_books = HornerLists.new.list(list_number)
  end

  def update
    @bookmark = Bookmark.find(params[:id])
    #update to use strong params and update_attributes
    @bookmark.book = params[:bookmark][:book]
    @bookmark.chapter = params[:bookmark][:chapter]

    if @bookmark.save
      redirect_to user_lists_path(current_user)
    else
      render 'edit'
    end
  end
end
