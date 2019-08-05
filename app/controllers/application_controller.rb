class ApplicationController < ActionController::Base
  protect_from_forgery prepend: true, with: :exception
  helper_method :admin_only

  def admin_only
    if !!current_student
      flash[:alert] = "Permission denied: You do not have admin access."
      redirect_to root_path and return
    end
  end

  # Helper Methods provided by Devise

  # authenticate_student! – Signs student in or redirect
  # student_signed_in? – Checks whether there is an student signed in or not
  # current_student – Current signed in student
  # student_session – Session data available only to the student scope
  # before_filter :authenticate_student! - Tell devise to use :student map

  # authenticate_admin! – Signs admin in or redirect
  # admin_signed_in? – Checks whether there is an admin signed in or not
  # current_admin – Current signed in admin
  # admin_session – Session data available only to the admin scope
  # before_filter :authenticate_admin! - Tell devise to use :admin map

end
