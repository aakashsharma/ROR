class Micropost < ActiveRecord::Base
  attr_accessible :content, :user-id
end
