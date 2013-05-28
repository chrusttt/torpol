class CreateDetailPrices < ActiveRecord::Migration
  def change
    create_table :detail_prices do |t|
      t.float :value
      t.references :pricelist
      t.references :norm

      t.timestamps
    end
    add_index :detail_prices, :pricelist_id
    add_index :detail_prices, :norm_id
  end
end
