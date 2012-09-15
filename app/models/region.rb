class Region < ActiveRecord::Base
  belongs_to :city
  attr_accessible :name, :year
end
