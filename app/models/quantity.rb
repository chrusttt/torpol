class Quantity < ActiveRecord::Base
  belongs_to :material
  belongs_to :norm, include: :material
  attr_accessible :value, :material_id, :material_attributes
  accepts_nested_attributes_for :material

  validates_presence_of :value, :material_id
	
  def partial_price
  	(self.value*self.material.transport_price).round(2)
  end
  
end
