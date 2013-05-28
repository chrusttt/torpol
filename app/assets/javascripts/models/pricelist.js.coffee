Torpol.Pricelist = DS.Model.extend 
	name: DS.attr('string')
	vat: DS.attr('number')
	detail_prices: DS.hasMany('Torpol.DetailPrice')	
	norms: DS.hasMany('Torpol.Norm')
