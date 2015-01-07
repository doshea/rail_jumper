class UsersController < ApplicationController

  def create
    @user = User.new(signup_params)
    if @user.save
      session[:user_id] = @user.id unless session[:user_id]
      redirect_to root_path
    else
      render :new
    end
  end

  def forgot_password
    @user = @current_user
    @redirect = params[:redirect]
  end


  private ###

  def signup_params
    params.require(:user).permit(:email, :password, :password_confirmation, :username)
  end

end