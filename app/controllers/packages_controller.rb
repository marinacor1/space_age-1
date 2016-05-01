class PackagesController < ApplicationController

  def index
    @packages = Package.all
  end

  def show
    @package = Package.find(params[:id])
  end

  def create
    @package = Package.new(package_params)

    if @package.save
      flash[:success] = "Package: #{@package.title} Created"
      redirect_to package_path(@package)
    else
      flash[:alert] = @package.errors.full_messages.join(", ")
      redirect_to admin_dashboard_path
    end

  end

  private

  def package_params
    params.require(:package).permit(:title, :description, :price, :destination_id, :image)
  end

end
