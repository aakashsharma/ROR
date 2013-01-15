class Group < ActiveRecord::Base
  has_many :friends
  attr_accessible :group_name

end
