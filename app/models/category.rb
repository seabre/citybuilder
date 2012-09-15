class Category < ActiveRecord::Base
  #belongs_to :expenditure
  has_many :expenditures
  attr_accessible :name
end
