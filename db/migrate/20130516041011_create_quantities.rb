class CreateQuantities < ActiveRecord::Migration
  def change
    create_table :quantities do |t|
      t.string :quantity
      t.references :material
      t.references :norm

      t.timestamps
    end
    add_index :quantities, :material_id
    add_index :quantities, :norm_id
    
  end
end
