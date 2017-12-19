class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def current_user
    @user = User.find(session[:user_id]) if session[:user_id]
  end

  # helper_method :current_user

  def authorize # 로그인 되었는지 판별해라
      redirect_to '/users/login' unless current_user
  end

end
