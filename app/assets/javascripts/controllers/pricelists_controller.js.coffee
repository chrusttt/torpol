Torpol.PricelistsController = Ember.ArrayController.extend
	addPricelist: (name, vat) ->
    Torpol.Pricelist.createRecord(name: name, vat: vat)
    @get('store').commit()

  addPrice: ->
  	@get('content.prices').createRecord()