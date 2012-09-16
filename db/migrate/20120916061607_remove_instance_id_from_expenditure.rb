class RemoveInstanceIdFromExpenditure < ActiveRecord::Migration
  def up
    remove_column :expenditures, :instance_id
  end

  def down
    add_column :expenditures, :instance_id, :integer
  end
end
