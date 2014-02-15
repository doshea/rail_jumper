class UsersController < ApplicationController

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