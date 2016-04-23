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

  def subtotal(package)
    package.price * sub_quantity(package.id)
  end

  def quantity
    itinerary.values.sum
  end

  def sub_quantity(id)
    itinerary.values_at(id.to_s).sum
  end

  def adjust_quantity(operation, id)
    if operation == "+"
      itinerary[id] += 1
    else
      itinerary[id] -= 1
    end
  end


end
