class RemoveImageFromPackages < ActiveRecord::Migration
  def change
    remove_column :packages, :image 
  end
end
