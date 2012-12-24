class User < ActiveRecord::Base
  attr_accessible :DateofBirth, :email, :group, :name
validates :email, :presence =>true
validates :DateofBirth, :presence =>true
validates :name, :presence =>true
end
