class AddShapeDataToRegion < ActiveRecord::Migration
  def change
    add_column :regions, :shape_data, :text
  end
end
