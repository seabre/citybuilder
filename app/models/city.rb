class City < ActiveRecord::Base
  #belongs_to :region
  has_many :regions

  #belongs_to :instance
  has_many :instances

  #belongs_to :expenditure
  has_many :expenditures

  #belongs_to :model
  has_many :models

  has_and_belongs_to_many :surveys

  attr_accessible :name
end
