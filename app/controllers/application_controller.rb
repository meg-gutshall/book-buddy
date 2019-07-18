class ApplicationController < ActionController::Base

  # * This code may be artibtrary since I already defined the params in controllers
  def devise_parameter_santizer
    if resource_class == Admin
      Admin::ParameterSanitizer.new(Admin, :admin, params)
    elsif resource_class == Student
      Student::ParameterSanitizer.new(Student, :student, params)
    else
      super # Use the default params
    end
  end

end
