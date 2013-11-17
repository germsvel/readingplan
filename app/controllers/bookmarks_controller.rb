class BookmarksController < ApplicationController
  respond_to :json
  def update
    bookmark = Bookmark.find(params[:id])
    if bookmark.advance
      flash[:notice] = "Success"
    else
      flash[:error] = "Sorry, there was an error"
    end
      redirect_to :root
  end
end
