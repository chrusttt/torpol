class RemovePriceFromNorms < ActiveRecord::Migration
  def up
    remove_column :norms, :price
  end

  def down
    add_column :norms, :price, :string
  end
end
