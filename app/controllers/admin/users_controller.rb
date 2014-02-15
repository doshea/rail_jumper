class Admin::UsersController < ApplicationController
  before_filter :ensure_admin

  def index
    @users = User.order(:created_at)
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    if @user.update_attributes(admin_user_params)
      redirect_to admin_users_path
    else
      render :edit
    end
  end

  def destroy
    User.find(params[:id]).delete
    redirect_to admin_users_path
  end

  private ###
  def admin_user_params
    params.require(:user).permit(:first_name, :last_name, :username, :email, :image, :auth_token)
  end

end