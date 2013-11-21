class BookmarksController < ApplicationController
  respond_to :json

  def update
    bookmark = Bookmark.find(params[:id])
    bookmark.advance
    redirect_to :root
  end
end
