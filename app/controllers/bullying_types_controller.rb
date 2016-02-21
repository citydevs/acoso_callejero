class BullyingTypesController < ApplicationController
  before_action :set_bullying_type, only: [:show, :edit, :update, :destroy]

  # GET /bullying_types
  # GET /bullying_types.json
  def index
    @bullying_types = BullyingType.all
  end

  # GET /bullying_types/1
  # GET /bullying_types/1.json
  def show
  end

  # GET /bullying_types/new
  def new
    @bullying_type = BullyingType.new
  end

  # GET /bullying_types/1/edit
  def edit
  end

  # POST /bullying_types
  # POST /bullying_types.json
  def create
    @bullying_type = BullyingType.new(bullying_type_params)

    respond_to do |format|
      if @bullying_type.save
        format.html { redirect_to @bullying_type, notice: 'Bullying type was successfully created.' }
        format.json { render :show, status: :created, location: @bullying_type }
      else
        format.html { render :new }
        format.json { render json: @bullying_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /bullying_types/1
  # PATCH/PUT /bullying_types/1.json
  def update
    respond_to do |format|
      if @bullying_type.update(bullying_type_params)
        format.html { redirect_to @bullying_type, notice: 'Bullying type was successfully updated.' }
        format.json { render :show, status: :ok, location: @bullying_type }
      else
        format.html { render :edit }
        format.json { render json: @bullying_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bullying_types/1
  # DELETE /bullying_types/1.json
  def destroy
    @bullying_type.destroy
    respond_to do |format|
      format.html { redirect_to bullying_types_url, notice: 'Bullying type was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bullying_type
      @bullying_type = BullyingType.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def bullying_type_params
      params.require(:bullying_type).permit(:name)
    end
end
