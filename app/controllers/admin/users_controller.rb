class Admin::UsersController < ApplicationController
  before_filter :ensure_admin

end