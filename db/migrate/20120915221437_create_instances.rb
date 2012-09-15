class CreateInstances < ActiveRecord::Migration
  def change
    create_table :instances do |t|
      t.references :expenditure
      t.integer :amount
      t.integer :year
      t.references :city

      t.timestamps
    end
    add_index :instances, :expenditure_id
    add_index :instances, :city_id
  end
end
