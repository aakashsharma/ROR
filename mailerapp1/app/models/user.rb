class User < ActiveRecord::Base
  attr_accessible :DateofBirth, :email, :group, :name
validates :email, :presence =>true
validates :DateofBirth, :presence =>true
validates :name, :presence =>true
scope :get_group_users , lambda { |group_name|  where(group: group_name)}
end
