class AccountController < ApplicationController
  before_filter :ensure_logged_in

  def show
  end

  def update
    @current_user.update_attributes(profile_params)
    render :show
  end

  def change_password
    if @current_user.authenticate(params[:old_password])
      @current_user.update_attributes(password_params)
    end
    redirect_to account_path
  end

  private ###
  def profile_params
    params.require(:user).permit(:first_name, :last_name, :image)
  end
  def password_params
    params.require(:user).permit(:password, :password_confirmation)
  end

end