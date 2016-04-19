class AddDestinationToPackages < ActiveRecord::Migration
  def change
    add_reference :packages, :destination, index: true, foreign_key: true
  end
end
