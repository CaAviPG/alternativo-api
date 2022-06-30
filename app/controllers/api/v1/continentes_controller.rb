class Api::V1::RestaurantsController < Api::V1::BaseController
  def index
    @continentes = Continente.all
    render json: @continentes
  end
end
