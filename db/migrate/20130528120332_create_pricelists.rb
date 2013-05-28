class CreatePricelists < ActiveRecord::Migration
  def change
    create_table :pricelists do |t|
      t.string :name
      t.float :vat

      t.timestamps
    end
  end
end
