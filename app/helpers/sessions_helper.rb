module SessionsHelper
  def current_user
    @current_user ||= User.find_by_auth_token!(cookies[:auth_token]) if(cookies[:auth_token])
  end

  def logged_in?
    if current_user.nil?
      raise 'Not logged in'
    else
      !current_user.nil?
    end
  end
end
