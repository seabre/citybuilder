class CreateExpenditures < ActiveRecord::Migration
  def change
    create_table :expenditures do |t|
      t.references :category
      t.integer :year
      t.references :instance

      t.timestamps
    end
    add_index :expenditures, :category_id
    add_index :expenditures, :instance_id
  end
end
