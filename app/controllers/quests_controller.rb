class QuestsController < ApplicationController
  before_action :authenticate_user

  def index
    @quests = Quest.all.order(created_at: :desc)
  end

  def show
    @quest = Quest.find_by(id: params[:id])
    @user = User.find_by(id: @quest.user_id)
  end

  def new
    @quest = Quest.new
  end

  def create
    @quest = Quest.new(content: params[:content], user_id: @current_user.id)
    if @quest.save
      flash[:notice] = "投稿を作成しました"
      redirect_to("/quests/index")
    else
      render("quests/new")
   end
 end

  def edit
    @quest = Quest.find_by(id: params[:id])
  end

  def update
    @quest = Quest.find_by(id: params[:id])
    @quest.content = params[:content]
    if @quest.save
      flash[:notice] = "クエストを編集しました"
      redirect_to("/quests/index")
    else
      redirect_to("/quests/#{@quest.id}/edit")
   end
 end

  def destroy
    @quest = Quest.find_by(id: params[:id])
    @quest.destroy
    flash[:notice] = "クエストを削除しました"
    redirect_to("/quests/index")
  end

  def authenticate_user
    if @current_user == nil
      flash[:notice] = "ログインが必要です"
      redirect_to("/login")
    end
  end

end
