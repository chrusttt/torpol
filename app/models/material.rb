class Material < ActiveRecord::Base
  attr_accessible :index, :name, :price, :transport_price, :unit

  validates_uniqueness_of :index
  validates_presence_of :index, :name, :price
  validates_numericality_of :price

  has_many :quantities, dependent: :destroy
  has_many :norms, through: :quantities
  before_save :set_transport_price

  def set_transport_price
  	self.transport_price = (self.price/0.95).round(2)
  end

end
