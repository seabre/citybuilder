class CreateHabtmCitiesSurveys < ActiveRecord::Migration
  def up
    create_table :cities_surveys, :id => false do |t|
        t.references :city, :null => false
        t.references :survey, :null => false
    end

    add_index(:cities_surveys, [:city_id, :survey_id], :unique => true)
  end

  def down
  end
end
