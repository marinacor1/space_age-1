class RemoveColumnsFromPackage < ActiveRecord::Migration
  def change
    remove_column :packages, :image_file_name
    remove_column :packages, :image_content_type
    remove_column :packages, :image_file_size
    remove_column :packages, :image_updated_at
  end
end
