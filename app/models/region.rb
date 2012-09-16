class Region < ActiveRecord::Base
  serialize :shape_data, JSON

  belongs_to :city
  attr_accessible :name, :year, :city_id, :shape_data, :color, :district_number
end
