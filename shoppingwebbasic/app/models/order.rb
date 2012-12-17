class Order < ActiveRecord::Base
  belongs_to :post
  attr_accessible :item, :numberofitems
end
