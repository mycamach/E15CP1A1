module UsersHelper
  def logged?
    session[:user_id].present? ? true : false
  end

  def current_user
    if logged?
      return User.find(session[:user_id])
    else
      return nil
    end
  end
end
