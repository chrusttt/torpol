Torpol.Norm = DS.Model.extend 
	index: DS.attr('string')
	name: DS.attr('string')
	final_price: DS.attr('number')
	pricelists: DS.hasMany('Torpol.Pricelist')
	detail_prices: DS.hasMany('Torpol.DetailPrice')
