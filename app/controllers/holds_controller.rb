class HoldsController < ApplicationController
  before_action :set_hold, only: [:show, :edit, :update, :destroy]

  # GET /holds
  def index
    @holds = Hold.all
  end

  # GET /holds/1
  def show
  end

  # GET /holds/new
  def new
    @hold = Hold.new
  end

  # GET /holds/1/edit
  def edit
  end

  # POST /holds
  def create
    @hold = Hold.new(hold_params)

    if @hold.save
      redirect_to @hold, notice: 'Hold was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /holds/1
  def update
    if @hold.update(hold_params)
      redirect_to @hold, notice: 'Hold was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /holds/1
  def destroy
    @hold.destroy

    redirect_to holds_url, notice: 'Hold was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions
    def set_hold
      @hold = Hold.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through
    def hold_params
      params.require(:hold).permit(:available, :borrowed, :cancelled, :student_id, :book_id)
    end
end
