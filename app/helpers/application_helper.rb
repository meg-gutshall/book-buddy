module ApplicationHelper
  # TODO: Create index table layouts for admin and non-admin users
  
  def hide_admin_action(link_code)
    if !!current_admin
      link_code
    end
  end
  
end
