class AddCategoryReferencesToSurvey < ActiveRecord::Migration
  def change
    add_column :surveys, :category_1, :integer
    add_column :surveys, :category_2, :integer
  end
end
