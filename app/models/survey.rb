class Survey < ActiveRecord::Base
  has_and_belongs_to_many :cities
  attr_accessible :question, :response1, :response2
end
