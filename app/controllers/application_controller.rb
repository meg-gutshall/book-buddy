class ApplicationController < ActionController::Base
  protect_from_forgery prepend: true
  helper_method :admin_only

  def admin_only
    if !!current_student
      redirect_to current_student, alert: "Permission denied: You do not have admin access."
    end
  end
