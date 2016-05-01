class ChangeColumnToOrders < ActiveRecord::Migration
  def change
    change_column :orders, :total_cost, :decimal, precision: 20, scale: 2
  end
end
