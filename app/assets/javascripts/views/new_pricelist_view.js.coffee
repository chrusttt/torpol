Torpol.NewPricelistView = Ember.View.extend
	templateName: 'new_pricelist'
	tagName: 'form'

	submit: ->
		@get('controller').send('addPricelist', @get('name'), @get('vat'))
		@set('name', "")
		@set('vat', "")
		false