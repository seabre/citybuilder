class Model < ActiveRecord::Base
  serialize :data, JSON

  belongs_to :city

  #?
  #belongs_to :income
  attr_accessible :year
end
