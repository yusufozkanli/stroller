class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
  end

  def dashboard
    if current_user.admin?
      @user = current_user
      @users = User.all
      @users_count = User.count
    else
      redirect_to root_path
    end
  end
end
