class RemoveCityIdFromSurvey < ActiveRecord::Migration
  def up
    remove_column :surveys, :city_id
  end

  def down
    add_column :surveys, :city_id, :integer
  end
end
