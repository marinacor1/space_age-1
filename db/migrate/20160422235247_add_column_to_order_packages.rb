class AddColumnToOrderPackages < ActiveRecord::Migration
  def change
    add_column :order_packages, :sub_quantity, :integer
  end
end
