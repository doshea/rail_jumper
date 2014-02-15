class Admin::UsersController < ApplicationController
  before_filter :ensure_admin

  def index
    @users = User.order(:created_at)
  end
end