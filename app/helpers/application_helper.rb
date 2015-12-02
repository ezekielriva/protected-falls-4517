module ApplicationHelper
  def decorated_current_user
    current_user.decorate
  end

  def active_menu?(menu)
    return 'active' if params[:controller] == menu
  end
end
