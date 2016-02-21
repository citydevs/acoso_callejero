class AggressorsController < ApplicationController
  before_action :set_aggressor, only: [:show, :edit, :update, :destroy]

  # GET /aggressors
  # GET /aggressors.json
  def index
    @aggressors = Aggressor.all
  end

  # GET /aggressors/1
  # GET /aggressors/1.json
  def show
  end

  # GET /aggressors/new
  def new
    @aggressor = Aggressor.new
  end

  # GET /aggressors/1/edit
  def edit
  end

  # POST /aggressors
  # POST /aggressors.json
  def create
    @aggressor = Aggressor.new(aggressor_params)

    respond_to do |format|
      if @aggressor.save
        format.html { redirect_to @aggressor, notice: 'Aggressor was successfully created.' }
        format.json { render :show, status: :created, location: @aggressor }
      else
        format.html { render :new }
        format.json { render json: @aggressor.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /aggressors/1
  # PATCH/PUT /aggressors/1.json
  def update
    respond_to do |format|
      if @aggressor.update(aggressor_params)
        format.html { redirect_to @aggressor, notice: 'Aggressor was successfully updated.' }
        format.json { render :show, status: :ok, location: @aggressor }
      else
        format.html { render :edit }
        format.json { render json: @aggressor.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /aggressors/1
  # DELETE /aggressors/1.json
  def destroy
    @aggressor.destroy
    respond_to do |format|
      format.html { redirect_to aggressors_url, notice: 'Aggressor was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_aggressor
      @aggressor = Aggressor.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def aggressor_params
      params.require(:aggressor).permit(:type)
    end
end
