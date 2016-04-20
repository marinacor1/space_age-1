class TripPackagesController < ApplicationController
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
    @packages = itinerary.keys.map do |id|
      Package.find(id)
    end
  end

  def destroy
    itinerary = session[:trip]
    @package = Package.find(params[:id])
    link = "<a href=\"#{url_for(@package)}\">#{@package.id}</a>"
    itinerary.delete(params[:id])
    flash[:success] = "Successfully removed #{link} from trip"
    redirect_to "/trip"
  end

end
