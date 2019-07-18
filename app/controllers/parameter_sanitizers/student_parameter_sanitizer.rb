# * This code may be artibtrary since I already defined the params in controllers

class Student::ParameterSanitizer < Devise::ParameterSanitizer
  def initialize(*)
    super
    permit(:sign_up, keys: [:first_name, :last_name, :email, :password, :school_id])
  end
end