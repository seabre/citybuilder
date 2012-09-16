class AddMoreFieldsToRegion < ActiveRecord::Migration
  def change
    add_column :regions, :district_number, :integer
    add_column :regions, :color, :string
  end
end
