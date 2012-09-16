class AddCityIdToExpenditure < ActiveRecord::Migration
  def change
    add_column :expenditures, :city_id, :integer
  end
end
