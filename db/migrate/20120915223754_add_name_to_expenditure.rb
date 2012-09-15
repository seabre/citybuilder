class AddNameToExpenditure < ActiveRecord::Migration
  def change
    add_column :expenditures, :name, :string
  end
end
