class UsersController < ApplicationController
  include SessionsHelper
  before_action :logged_in?
  def index
    @users = User.all
  end
end
