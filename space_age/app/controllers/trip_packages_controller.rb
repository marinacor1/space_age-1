class TripPackagesController < ApplicationController
  def create
    package = Package.find(params[:package_id])

    @trip.add_package(package.id)

    session[:trip] = @trip.itinerary
    flash[:notice] = "You have added #{package.title} to your trip. Your current trip costs: #{@trip.total_price}."
    redirect_to package_path(package)
  end

end
