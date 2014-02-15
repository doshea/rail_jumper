class UsersController < ApplicationController
  before_filter :ensure_admin, only: [:index, :edit, :update, :destroy]

  def index
    @users = User.order(:created_at)
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(signup_params)
    if @user.save
      session[:user_id] = @user.id unless session[:user_id]
      redirect_to root_path
    else
      render :new
    end
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    user = User.find(params[:id])
    if user.update_attributes(profile_params)
      redirect_to root_path
    else
      render :edit
    end
  end

  def destroy
    user.find(params[:id]).delete
    redirect_to root_path
  end


  private ###

  def signup_params
    params.require(:user).permit(:email, :password, :password_confirmation, :username)
  end

  def password_params
    params.require(:user).permit(:password, :password_confirmation)
  end

  def profile_params
    params.require(:user).permit(:first_name, :last_name, :image)
  end
end