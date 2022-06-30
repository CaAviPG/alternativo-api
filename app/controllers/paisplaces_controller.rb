class PaisplacesController < ApplicationController

  # before_action :set_pais, only: %i[ show edit update destroy ]

  # GET /pais or /pais.json
  def index
    @paisplaces = Paisplace.where(continente_id: params[:continente_id])
    @continente = @paisplaces.first.continente
    render json: @paisplaces
  end

  # GET /pais/1 or /pais/1.json
  def show
    @paisplace = Paisplace.find(params[:id])
    @continente = @paisplace.continente
    render json: @paisplace
  end

  # GET /pais/new
  def new
    @continente = Continente.find(params[:course_id])
    @paisplace = Paisplace.new
  end

  # POST /pais or /pais.json
  def create
  @paisplace = Paisplace.new(paisplace_params)
    @paisplace.user = current_user
    # we need `restaurant_id` to associate paisplace with corresponding restaurant
    @continente = Course.find(params[:continente_id])
    @paisplace.continente = @continente
    if @paisplace.save
      redirect_to continente_path(@continente)
    else
      render :new
    end
  end

  # GET /pais/1/edit
  def edit
    @paisplace = Paisplace.find(params[:id])
  end

  # PATCH/PUT /pais/1 or /pais/1.json
  def update
    @pais = Pais.find(params[:id])
    if @paisplace.update(paisplace_params)
      render json: @paisplace
    else
      render :edit
    end
  end

  # DELETE /pais/1 or /pais/1.json
  def destroy
    @paisplace = Pais.find(params[:id])
    @paisplace.destroy
    render json: @paisplace
  end

  private

  # Only allow a list of trusted parameters through.
  def paisplace_params
    params.require(:pais).permit(:imagen, :denominacion, :habitantes, :superficie, :user_id)
  end
end
