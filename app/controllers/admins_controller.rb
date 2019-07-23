class AdminsController < ApplicationController
  before_action :admin_only

  # GET /admin/1
  def show
  end

  private
    # Never trust parameters from the scary internet, only allow the white list through
    def admin_params
      params.require(:admin).permit(:first_name, :last_name, :email, :password)
    end

end
