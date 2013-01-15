class Friend < ActiveRecord::Base
  belongs_to :group
  attr_accessible :DateOfBirth, :Email, :Name, :group
end
