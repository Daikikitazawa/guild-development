class QuestsController < ApplicationController

  def index
    @quests = Quest.all.order(created_at: :desc)
  end

  def show
    @quest = Quest.find_by(id: params[:id])
  end

  def new
  end

  def create
    @quest = Quest.new(content: params[:content])
    @quest.save
    redirect_to("/quests/index")
  end

  def edit
    @quest = Quest.find_by(id: params[:id])
  end

  def update
    @quest = Quest.find_by(id: params[:id])
    @quest.content = params[:content]
    @quest.save
    redirect_to("/quests/index")
  end

end
