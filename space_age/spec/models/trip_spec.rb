require "rails_helper"

RSpec.describe Trip, type: :model do
  it "user can add package to trip(cart)" do
    trip = Trip.new({"1" => 1})

    trip.add_package(1)
    trip.add_package(3)

    expect(trip.itinerary).to eq({"1" => 2, "3" => 1})
  end

  it "can sum the prices in the trip(cart)" do
    package1 = Package.create(id: 1, price: 1000, title: "Basic1", description: "Basic package1.", image: "img")
    package2 = Package.create(id: 2, price: 2000, title: "Basic2", description: "Basic package2.", image: "img1")
    trip = Trip.new({"1" => 1, "2" => 2})

   expect(trip.total_price).to eq(5000)

  end
end
