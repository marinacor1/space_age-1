class Order < ActiveRecord::Base
  belongs_to :user
  has_many :order_packages
  has_many :packages, through: :order_packages

  enum status: %w(Pending Paid Cancelled)

  def create_packages(trip)
    trip.itinerary.keys.each do |id|
      order_packages.create(user_id: user_id, order_id: id, package_id: id.to_i)
    end
  end

  def package_total_price
    packages.sum(:price)
  end

  def package_quantity(package_id)
    order_packages.where(package_id: package_id).count
  end

  def total_quantity
    order_packages.count
  end

  def subtotal(package)
    package_quantity(package.id) * package.price
  end

  def format_time(time)
    time.strftime("%B %d, %Y @ %l:%M%p")
  end

  def package_names
    packages.pluck(:title).join(", ")
  end

end
