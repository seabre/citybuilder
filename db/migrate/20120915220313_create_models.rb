class CreateModels < ActiveRecord::Migration
  def change
    create_table :models do |t|
      t.references :city
      t.references :income
      t.integer :year

      t.timestamps
    end
    add_index :models, :city_id
    add_index :models, :income_id
  end
end
