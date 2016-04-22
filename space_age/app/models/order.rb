class Order < ActiveRecord::Base
  belongs_to :user
  has_many :order_packages
  has_many :packages, through: :order_packages

  enum status: %w(pending, paid, cancelled)

  def total_cost
    packages.sum(:price)
  end
end
