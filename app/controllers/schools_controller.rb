class SchoolsController < ApplicationController
  before_action :set_school, only: [:show, :edit, :update, :destroy]
  before_action :admin_district_stray, only: [:show, :edit, :update, :destroy]
  before_action :admin_only

  # GET /schools
  def index
    # Scope schools index view to only what the admin themselves own
    @schools = current_admin.schools
  end

  # GET /schools/1
  def show
  end

  # GET /schools/new
  def new
    @school = School.new
  end

  # GET /schools/1/edit
  def edit
  end

  # POST /schools
  def create
    @school = School.new(school_params)

      if @school.save
        redirect_to @school, notice: 'School was successfully created.'
      else
        render :new
      end
  end

  # PATCH/PUT /schools/1
  def update

      if @school.update(school_params)
        redirect_to @school, notice: 'School was successfully updated.'
      else
        render :edit
      end
  end

  # DELETE /schools/1
  def destroy
    @school.destroy
    
    redirect_to schools_url, notice: 'School was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions
    def set_school
      @school = School.find_by(id: params[:id])
    end

    def admin_district_stray
      unless current_admin.school_ids.include?(params[:id].to_i)
        flash[:alert] = "Permission denied: You may not view or edit another school districts' content."
        redirect_to root_path and return
      end
    end

    # Never trust parameters from the scary internet, only allow the white list through
    def school_params
      params.require(:school).permit(:name, :admin_id)
    end
end
