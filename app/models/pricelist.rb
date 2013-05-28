class Pricelist < ActiveRecord::Base
  attr_accessible :name, :vat
  has_many :detail_prices
  has_many :norms, through: :detail_prices
  accepts_nested_attributes_for :detail_prices
  accepts_nested_attributes_for :norms
end
