class Order < ActiveRecord::Base
  belongs_to :user
  has_many :order_packages
  has_many :packages, through: :order_packages

  enum status: %w(Pending Paid Cancelled)

  def package_total_price
    packages.sum(:price)
  end

  def package_quantity(package_id)
    order_packages.find_by(package_id: package_id).sub_quantity
  end

  def total_quantity
    order_packages.sum(:sub_quantity)
  end

  def package_names
    packages.pluck(:title).join(", ")
  end

end
