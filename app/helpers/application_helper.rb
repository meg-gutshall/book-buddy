module ApplicationHelper
  # TODO: Create index table layouts for admin and non-admin users
  
  def hide_admin_action(link_code)
    link_code if !!current_admin
  end

  def site_link(text, href)
    "<a href='#{href}'>#{text}</a>".html_safe
  end

  def site_button(text, href)
    "<a href='#{href}' class='btn btn-primary'>#{text}</a>".html_safe
  end
  
end
