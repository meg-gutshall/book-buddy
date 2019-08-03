class AdminsController < ApplicationController
  before_action :admin_only

  # GET /admin
  def index
    # TODO: Add master control
    redirect_to current_admin
  end

  # GET /admin/1
  # def show
    # Not needed unless I want to add further functioning here
  # end

  private
    # Never trust parameters from the scary internet, only allow the white list through
    def admin_params
      params.require(:admin).permit(:first_name, :last_name, :email, :password)
    end

end
