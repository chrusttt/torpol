class PricelistSerializer < ActiveModel::Serializer
  attributes :id, :name, :vat
  #has_many :detail_prices
  #has_many :norms
end
