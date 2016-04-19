class CreatePackages < ActiveRecord::Migration
  def change
    create_table :packages do |t|
      t.string :title
      t.decimal :price
      t.string :description
      t.string :image

      t.timestamps null: false
    end
  end
end
