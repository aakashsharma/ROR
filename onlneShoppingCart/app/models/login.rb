class Login < ActiveRecord::Base
  attr_accessible :contactno, :mail, :name
  has_many :place_order
  validates :mail, :presence =>true
end
