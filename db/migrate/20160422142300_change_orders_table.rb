class ChangeOrdersTable < ActiveRecord::Migration
  def change
    change_table :orders do |t|
      t.timestamps  null: false
      t.integer :status, default: 0
    end
  end
end
