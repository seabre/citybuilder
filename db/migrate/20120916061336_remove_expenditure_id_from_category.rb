class RemoveExpenditureIdFromCategory < ActiveRecord::Migration
  def up
    remove_column :categories, :expenditure_id
  end

  def down
    add_column :categories, :expenditure_id, :integer
  end
end
