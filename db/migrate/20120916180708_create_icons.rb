class CreateIcons < ActiveRecord::Migration
  def change
    create_table :icons do |t|
      t.string :name
      t.string :main_text
      t.string :alt_text
      t.text :image

      t.timestamps
    end
  end
end
