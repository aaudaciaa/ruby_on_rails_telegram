module ApplicationHelper
  def current_user
    @user = User.find(session[:user_id]) if session[:user_id]
  end
  # => application_controller에 helper_method :current라고 해주면 안써도 됨.
end
