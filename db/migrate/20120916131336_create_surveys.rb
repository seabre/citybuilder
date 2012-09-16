class CreateSurveys < ActiveRecord::Migration
  def change
    create_table :surveys do |t|
      t.string :question
      t.string :response1
      t.string :response2
      t.references :city

      t.timestamps
    end
    add_index :surveys, :city_id
  end
end
