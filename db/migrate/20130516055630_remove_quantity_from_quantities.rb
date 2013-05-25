class RemoveQuantityFromQuantities < ActiveRecord::Migration
  def up
    remove_column :quantities, :quantity
  end

  def down
    add_column :quantities, :quantity, :float
  end
end
