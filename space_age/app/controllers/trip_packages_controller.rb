class TripPackagesController < ApplicationController
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
    @packages = itinerary.keys.map do |id|
      Package.find(id)
    end
  end

end
