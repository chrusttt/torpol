class CreateNorms < ActiveRecord::Migration
  def change
    create_table :norms do |t|
      t.string :index
      t.string :name
      t.float :price

      t.timestamps
    end
  end
end
