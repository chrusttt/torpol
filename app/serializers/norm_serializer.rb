class NormSerializer < ActiveModel::Serializer
  attributes :id, :name, :index, :price
  has_many :detail_prices
  has_many :materials
  has_many :pricelists
end
