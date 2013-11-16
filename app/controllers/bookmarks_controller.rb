class BookmarksController < ApplicationController
  respond_to :json
  def update
    bookmark = Bookmark.find(params[:id])
    if bookmark.update_attributes(chapter: bookmark.chapter + 1)
      flash[:notice] = "Success"
    else
      flash[:error] = "Sorry, there was an error"
    end
      redirect_to :root
  end
end
