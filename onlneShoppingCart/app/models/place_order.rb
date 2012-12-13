class PlaceOrder < ActiveRecord::Base
  attr_accessible :item, :mail
  validates :mail, :presence => true
  belongs_to :login
  
end
