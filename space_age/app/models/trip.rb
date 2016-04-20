class Trip
  attr_reader :itinerary

  def initialize(initial_itinerary)
    @itinerary = initial_itinerary || {}
  end

  def add_package(package_id)
    itinerary[package_id.to_s] ||= 0
    itinerary[package_id.to_s] += 1
  end

  def total_price
    itinerary.map do |id, quantity|
      Package.find(id).price * quantity
    end.sum
  end

end
