class TripPackagesController < ApplicationController

  include TripPackagesHelper

  def show
    @packages = Package.all
  end

  def create
    package = Package.find(params[:package_id])

    @trip.add_package(package.id)

    session[:trip] = @trip.itinerary
    flash[:notice] = "You have added #{package.title} to your trip. Your current trip costs: #{@trip.total_price}."
    redirect_to package_path(package)
  end

   def show
    itinerary = session[:trip]
    @total_price = Trip.new(itinerary).total_price
    unless itinerary.nil?
      @packages = itinerary.keys.map do |id|
        Package.find(id)
      end
    end
  end

  def update
    if params[:operation] == "+"
      increment_quantity(params[:id])
    else
      decrement_quantity(params[:id])
    end
    redirect_to '/trip'
  end


  def destroy
    itinerary = session[:trip]
    @package = Package.find(params[:id])
    itinerary.delete(params[:id])
    flash[:delete_package] = "Successfully removed #{@package.title} from your trip"
    redirect_to "/trip"
  end


end
