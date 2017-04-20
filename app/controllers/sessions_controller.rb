class SessionsController < ApplicationController
  def create
    if (!User.find_by_cpf(params[:login]).nil?)
      user = User.find_by_cpf(params[:login])
    elsif (!User.find_by_registry(params[:login]).nil?)
      user = User.find_by_registry(params[:login])
    end

    if (user and user.authenticate(params[:password]))
      cookies[:auth_token] = user.auth_token
      redirect_to users_path
    else
      redirect_to root_url
    end
  end

  def destroy
    cookies.delete(:auth_token)
    redirect_to root_url
  end
end
