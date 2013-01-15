class Film < ActiveRecord::Base
  attr_accessible :budget, :country, :name, :year
  has_many :perfomances
end
