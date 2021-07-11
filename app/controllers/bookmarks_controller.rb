class BookmarksController < ApplicationController

  def create
    @bookmark = Bookmark.new(user_id: @current_user.id, quest_id: params[:quest_id])
    @bookmark.save
    redirect_to("/quests/#{params[:quest_id]}")
  end

end
