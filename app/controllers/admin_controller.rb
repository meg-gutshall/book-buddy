class AdminController < ApplicationController
  before_action :set_admin, only: [:show, :edit, :update, :destroy]
  # Helpers (use with before_action): authenticate_admin!, admin_signed_in?, current_admin, admin_session

  # GET /admin
  def index
    @admins = Admin.all
  end

  # GET /admin/1
  def show
  end

  # GET /admin/new
  def new
    @admin = Admin.new
  end

  # GET /admin/1/edit
  def edit
  end

  # POST /admin
  def create
    @admin = Admin.new(admin_params)

    if @admin.save
      redirect_to @admin, notice: 'Admin was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /admin/1
  def update
    if @admin.update(admin_params)
      redirect_to @admin, notice: 'Admin was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /admin/1
  def destroy
    @admin.destroy
    
    redirect_to admin_index_url, notice: 'Admin was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions
    def set_admin
      @admin = Admin.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through
    def admin_params
      params.require(:admin).permit(:first_name, :last_name, :email, :password)
    end
end
