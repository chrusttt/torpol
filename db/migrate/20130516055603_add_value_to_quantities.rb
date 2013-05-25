class AddValueToQuantities < ActiveRecord::Migration
  def change
    add_column :quantities, :value, :float
  end
end
