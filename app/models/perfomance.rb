class Perfomance < ActiveRecord::Base
  belongs_to :film
  belongs_to :hall
  attr_accessible :date, :hall, :film
  has_many :tickets
end
