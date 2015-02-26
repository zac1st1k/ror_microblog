module SessionsHelper
  def log_in(user)
    session[:user_id] = user.id
  end

  # return current user if existing
  def current_user
    @current_user ||= User.find_by(id: session[:user_id])
  end

	# if logged in return ture else return false 
  def logged_in?
    !current_user.nil?
  end
end
