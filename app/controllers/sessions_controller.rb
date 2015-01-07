class SessionsController < ApplicationController
  def new
    @user = User.new
  end

  def create
    user = User.find_by_username(params[:username])
    if user.present? && user.authenticate(params[:password])
      if params[:remember_me]
        cookies.permanent[:auth_token] = user.auth_token
      else
        cookies[:auth_token] = user.auth_token
      end
    end
    redirect_to root_path
  end

  def destroy
    session[:user_id] = nil
    cookies.delete(:auth_token)
    redirect_to root_url
  end
end