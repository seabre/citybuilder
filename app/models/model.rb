class Model < ActiveRecord::Base
  belongs_to :city

  #?
  #belongs_to :income
  attr_accessible :year
end
