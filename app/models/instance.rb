class Instance < ActiveRecord::Base
  belongs_to :expenditure
  belongs_to :city
  attr_accessible :amount, :year, :expenditure_id, :city_id
end
