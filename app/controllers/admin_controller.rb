class AdminController < ApplicationController
  before_action :current_admin_only, only: [:edit, :update, :destroy]
  before_action :admin_only

  # GET /admin
  def index
    @admins = Admin.all
  end

  # GET /admin/1
  def show
  end

  # GET /admin/new
  # def new
  #   @admin = Admin.new
  # end

  # GET /admin/1/edit
  # def edit
  # end

  # POST /admin
  # def create
  #   @admin = Admin.new(admin_params)

  #   if @admin.save
  #     redirect_to @admin, notice: 'Admin was successfully created.'
  #   else
  #     render :new
  #   end
  # end

  # PATCH/PUT /admin/1
  # def update
  #   if @admin.update(admin_params)
  #     redirect_to @admin, notice: 'Admin was successfully updated.'
  #   else
  #     render :edit
  #   end
  # end

  # DELETE /admin/1
  # def destroy
  #   @admin.destroy
    
  #   redirect_to admins_path, notice: 'Admin was successfully destroyed.'
  # end

  private
    # Never trust parameters from the scary internet, only allow the white list through
    def admin_params
      params.require(:admin).permit(:first_name, :last_name, :email, :password)
    end

    def current_admin_only
      if !!current_admin
        redirect_to current_admin, alert: "Permission denied: You may not edit or delete other admin accounts."
      end
    end
end
