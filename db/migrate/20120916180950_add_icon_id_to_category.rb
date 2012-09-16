class AddIconIdToCategory < ActiveRecord::Migration
  def change
    add_column :categories, :icon_id, :integer
  end
end
