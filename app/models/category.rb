class Category < ActiveRecord::Base
  belongs_to :icon
  #belongs_to :expenditure
  has_many :expenditures
  attr_accessible :name, :icon_id
end
