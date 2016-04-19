require "rails_helper"

RSpec.describe Trip, type: :model do
  it "user can add package to trip(cart)" do
    trip = Trip.new({"1" => 1})

    trip.add_package(1)
    trip.add_package(3)

    expect(trip.itinerary).to eq({"1" => 2, "3" => 1})
  end

  it "can sum the prices in the trip(cart)" do
    package1 = Package.new(id: 1, price: 1000, title: "Basic", description: "Basic package.")
    trip = Trip.new({"1" => 1, "2" => 2, "3" => 1})

   expect(trip.total_price).to eq()

  end
end
