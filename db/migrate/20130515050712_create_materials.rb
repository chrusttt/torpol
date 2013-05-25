class CreateMaterials < ActiveRecord::Migration
  def change
    create_table :materials do |t|
      t.string :index
      t.float :price
      t.float :transport_price
      t.string :name
      t.string :unit

      t.timestamps
    end
  end
end
