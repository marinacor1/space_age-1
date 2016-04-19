class Trip
  attr_reader :itinerary

  def initialize(initial_itinerary)
    @itinerary = initial_itinerary || {}
  end

  def add_package(package_id)
    itinerary[package_id.to_s] ||= 0
    itinerary[package_id.to_s] += 1
  end

  def total
    itinerary.values.sum
  end

end
