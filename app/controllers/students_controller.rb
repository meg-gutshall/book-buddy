class StudentsController < ApplicationController
  
  # GET /students
  def index
    @students = Student.all
  end

  # GET /students/1
  def show
  end

  private
    # Never trust parameters from the scary internet, only allow the white list through
    def student_params
      params.require(:student).permit(:first_name, :last_name, :email, :password, :school_id)
    end
end
