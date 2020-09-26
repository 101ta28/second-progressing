class MicropostsController < ApplicationController
  before_action :logged_in_user, only: [:create, :destory]
  before_action :correct_user, only: :destory

  def create
    @micropost = current_user.microposts.build(micropost_params)
    if @micropost.save
      flash[:success] = "投稿しました"
      redirect_to root_url
    else
      render "static_pages/home"
    end

  def destory
    @micropost.destory
    flash[:success] = "コメントを削除しました"
    redirect_to request.referrer || root_url
  end

  private

  def micropost_params
    params.require(:micropost).permit(:content)
  end

end
