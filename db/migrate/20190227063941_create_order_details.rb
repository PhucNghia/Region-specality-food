class CreateOrderDetails < ActiveRecord::Migration[5.1]
  def change
    create_table :order_details do |t|
      t.integer :order_id
      t.integer :product_id
      t.integer :quantity
      t.float :sale_price
      t.integer :status, default: 0

      t.timestamps
    end
  end
end
