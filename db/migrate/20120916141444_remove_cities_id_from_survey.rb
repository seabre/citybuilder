class RemoveCitiesIdFromSurvey < ActiveRecord::Migration
  def up
   # remove_column :surveys, :cities_id
  end

  def down
  #  add_column :surveys, :cities_id, :integer
  end
end
