class QuestController < ApplicationController
  def index
    @quests = Quest.all
  end
end
