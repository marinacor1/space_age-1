class DeleteSubQuantityFromOrderPackages < ActiveRecord::Migration
  def change
    remove_column :order_packages, :sub_quantity
  end
end
