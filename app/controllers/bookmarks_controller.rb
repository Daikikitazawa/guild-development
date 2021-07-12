class BookmarksController < ApplicationController

  def create
    @bookmark = Bookmark.new(user_id: @current_user.id, quest_id: params[:quest_id])
    @bookmark.save
    redirect_to("/quests/#{params[:quest_id]}")
  end

  def destroy
    @bookmark = Bookmark.find_by(user_id: @current_user.id, quest_id: params[:quest_id])
    @bookmark.destroy
    redirect_to("/quests/#{params[:quest_id]}")
  end

end
