class QuestController < ApplicationController
  def index
    @quests = Quest.all
  end

  def show
  end
  
end
