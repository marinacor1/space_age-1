class OrderPackage < ActiveRecord::Base
  belongs_to :user
  belongs_to :order
  belongs_to :package
end
