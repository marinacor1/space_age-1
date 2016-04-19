class TripPackagesController < ApplicationController
  def create
    package = Package.find(params[:package_id])

    @trip.add_package(package)

    session[:trip] = @trip.contents

    flash[:notice] = "You have added #{package.title} to your trip. Your current trip costs: #{package.price}." 
    redirect_to package_path(package)
  end

end
