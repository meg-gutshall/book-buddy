class LibrariesController < ApplicationController
  before_action :set_library, only: [:show, :edit, :update, :destroy]
  before_action :admin_only, only: [:new, :create, :edit, :update, :destroy]

  # GET /libraries
  def index
    @libraries = Library.all
  end

  # GET /libraries/1
  def show
  end

  # GET /libraries/new
  def new
    @library = Library.new
  end

  # GET /libraries/1/edit
  def edit
  end

  # POST /libraries
  def create
    @library = Library.new(library_params)

    if @library.save
      redirect_to @library, notice: 'Library was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /libraries/1
  def update
    if @library.update(library_params)
      redirect_to @library, notice: 'Library was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /libraries/1
  def destroy
    @library.destroy

    redirect_to libraries_url, notice: 'Library was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions
    def set_library
      @library = Library.find_by(id: params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through
    def library_params
      params.require(:library).permit(:room_number, :school_id)
    end
end
