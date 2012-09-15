class Expenditure < ActiveRecord::Base
  belongs_to :category

  #belongs_to :instance
  has_many :instances
  attr_accessible :year
end
