class Survey < ActiveRecord::Base
  belongs_to :city
  attr_accessible :question, :response1, :response2
end
