class CreateCities < ActiveRecord::Migration
  def change
    create_table :cities do |t|
      t.string :name
      t.references :region
      t.references :instance
      t.references :expenditure
      t.references :model

      t.timestamps
    end
    add_index :cities, :region_id
    add_index :cities, :instance_id
    add_index :cities, :expenditure_id
    add_index :cities, :model_id
  end
end
