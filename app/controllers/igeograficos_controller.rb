class IgeograficosController < ApplicationController
  def index
    @igeograficos = Igeografico.all
    @paisplace = @igeograficos.first.paisplace
    render json: @igeograficos
  end

    # GET /pais/1 or /pais/1.json
  def show
    @igeografico = Igeografico.find(params[:id])
    @paisplace = @igeografico.paisplace
    @continente = @paisplace.continente
    render json: @igeografico
  end

end
