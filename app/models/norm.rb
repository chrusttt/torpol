class Norm < ActiveRecord::Base
  attr_accessible :index, :name, :quantities_attributes
  has_many :quantities
  has_many :materials, through: :quantities
  accepts_nested_attributes_for :quantities, reject_if: :all_blank, allow_destroy: true

  has_many :detail_prices
  has_many :pricelists, through: :detail_prices

  validates_presence_of :name, :index
  validates_uniqueness_of :index  
  validates_associated :quantities


  def final_price
  		(self.calculate_price).round(2)
  end

  def has_price?
  	unless self.materials.nil? && self.quantities.nil?
  		true
  	end
  end

  def calculate_price
  	sum = 0
  	if self.has_price?
	  	quantities = self.quantities
	  	quantities.each  do |q| 
	  		sum = sum + (q.material.transport_price*q.value )
	  	end
	  end
	  sum
  end

 

end
