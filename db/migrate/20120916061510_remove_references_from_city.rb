class RemoveReferencesFromCity < ActiveRecord::Migration
  def up
    remove_column :cities, :region_id
    remove_column :cities, :instance_id
    remove_column :cities, :expenditure_id
    remove_column :cities, :model_id
  end

  def down
    add_column :cities, :model_id, :integer
    add_column :cities, :expenditure_id, :integer
    add_column :cities, :instance_id, :integer
    add_column :cities, :region_id, :integer
  end
end
