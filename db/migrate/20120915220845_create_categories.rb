class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories do |t|
      t.string :name
      t.references :expenditure

      t.timestamps
    end
    add_index :categories, :expenditure_id
  end
end
