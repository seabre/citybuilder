class Icon < ActiveRecord::Base
  has_many :categories
  attr_accessible :alt_text, :image, :main_text, :name
end
