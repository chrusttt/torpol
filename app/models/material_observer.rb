class MaterialObserver < ActiveRecord::Observer
	observe :material


	# def after_remove(record)
	# 	norms = record.norms
	# 	norms.each do |norm| 
	# 		new_price = norm.calculate_price
	# 		norm.update_attribute(price: new_price)
	# 	end
	# end


end
