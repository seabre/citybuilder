class Model < ActiveRecord::Base
  serialize :data, JSON

  belongs_to :city

  #?
  #belongs_to :income
  attr_accessible :year, :city_id, :income_id, :data
end
