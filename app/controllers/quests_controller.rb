class QuestsController < ApplicationController
  def index
    @quests = Quest.all
  end

  def show
    @quest = Quest.find_by(id: params[:id])
  end

  def new
  end

end
