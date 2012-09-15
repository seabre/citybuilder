class AddDataToModel < ActiveRecord::Migration
  def change
    add_column :models, :data, :text
  end
end
