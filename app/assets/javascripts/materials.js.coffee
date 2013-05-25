# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

$ ->

	$('.best_in_place').best_in_place()

	$(document).on "ajax:success", '.best_in_place',  ->
		price = parseFloat($(this).html())
		transport_price = (price/0.95).toFixed(2)
		material = "#material_" + $(this).data('id')
		$(material).html(transport_price)


