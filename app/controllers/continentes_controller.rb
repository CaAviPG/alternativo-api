class ContinentesController < ApplicationController
  def index
    @continentes = Continente.all
    render json: @continentes
  end

  def show
    @continente = Continente.find(params[:id])
    render json: @continente
  end
end
