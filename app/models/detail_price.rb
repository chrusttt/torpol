class DetailPrice < ActiveRecord::Base
  belongs_to :pricelist
  belongs_to :norm
  attr_accessible :value
  accepts_nested_attributes_for :norm
end
