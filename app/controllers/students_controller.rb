class StudentsController < ApplicationController
  before_action :set_student, only: [:show]
  
  # GET /students
  def index
    @students = Student.student_specific(current_student)
  end

  # GET /students/1
  def show
  end

  private
    # Use callbacks to share common setup or constraints between actions
    def set_student
      @student = Student.find_by(id: params[:id])
    end
    
    # Never trust parameters from the scary internet, only allow the white list through
    # def student_params
    #   params.require(:student).permit(:first_name, :last_name, :school_id, :email, :password, :password_confirmation, :current_password)
    # end
end
