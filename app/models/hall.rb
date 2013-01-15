class Hall < ActiveRecord::Base
  belongs_to :cinema, :foreign_key => "cinema_id"
  attr_accessible :name, :nor, :nos, :cinema_id
  has_many :perfomances
end
