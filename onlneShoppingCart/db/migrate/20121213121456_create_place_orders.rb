class CreatePlaceOrders < ActiveRecord::Migration
  def change
    create_table :place_orders do |t|
      t.string :item
      t.string :mail

      t.timestamps
    end
  end
end
