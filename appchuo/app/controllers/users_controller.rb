class UsersController < ApplicationController
  before_action :authenticate_user!
  # , except: [:index]
  
  # 検索用
  # before_action :set_q, only: [:index, :search]
  # 検索用

  def index
    @users = User.all

  end
  def show
    @user = User.find(params[:id])
  end
  def edit
    @user = User.find(params[:id])
    if @user != current_user
        redirect_to user_path(current_user), alert: "不正なアクセスです。"
    end
  end
  def update
    @user = User.find(params[:id])
    if @user.update(user_params)
      redirect_to user_path(@user), notice: "ユーザー情報を更新しました。"
    else
      render :edit
    end
  end
  # 検索用
  def search
  end
  # 検索用

  private
  def user_params
    params.require(:user).permit(:name, :email, :faculty, :department, :hobby, :birthplace, :address, :introduction, :image)
  end
  
  # 検索用
  # def search_params
  #     params.require(:q).permit(:name_cont)
  # end
  # def set_q
  #   # @users = @q.result.paginate(page: params[:page])
  # end
# 　検索用
end