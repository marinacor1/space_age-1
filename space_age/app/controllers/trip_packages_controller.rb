class TripPackagesController < ApplicationController
  def create
    package = Package.find(params[:package_id])

    @trip.add_package(package)

    session[:trip] = @trip.contents
    
    redirect_to package_path(package)
  end

end
