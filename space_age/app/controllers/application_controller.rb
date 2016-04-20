class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :all_destinations
  before_action :set_trip

  def all_destinations
    @destinations = Destination.all
  end

  def set_trip
    @trip = Trip.new(session[:trip])
  end

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end

end
