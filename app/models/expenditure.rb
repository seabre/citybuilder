class Expenditure < ActiveRecord::Base
  belongs_to :category
  belongs_to :city

  #belongs_to :instance
  has_many :instances
  attr_accessible :year, :category_id, :name, :city_id
end
