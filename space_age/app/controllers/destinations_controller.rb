class DestinationsController < ApplicationController

  def show
    @destination = Destination.find_by(planet: params[:planet])
  end

end
