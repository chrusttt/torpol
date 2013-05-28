Torpol.DetailPrice = DS.Model.extend
	value: DS.attr('float')
	norm: DS.belongsTo('Torpol.Norm')
	pricelist: DS.belongsTo('Torpol.Pricelist')
	norm: DS.belongsTo('Torpol.Norm')
