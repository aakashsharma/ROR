class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.string :item
      t.string :numberofitems
      t.references :post

      t.timestamps
    end
    add_index :orders, :post_id
  end
end
