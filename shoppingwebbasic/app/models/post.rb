class Post < ActiveRecord::Base
  attr_accessible :contactno, :mail, :name
  validates :name,  :presence => true
  validates :mail,  :presence => true
  validates :contactno, :presence => true,                     :length => { :is => 10}

has_many :orders  
end
