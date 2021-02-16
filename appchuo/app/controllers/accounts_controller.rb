  # マイページに遷移させるために追加
class AccountsController < ApplicationController
  before_action :authenticate_user!

  def show
    @account = current_user
  end
end
