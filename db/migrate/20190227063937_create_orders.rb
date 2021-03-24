class CreateOrders < ActiveRecord::Migration[5.1]
  def change
    create_table :orders do |t|
      t.integer :user_id
      t.datetime :order_date
      t.string :receiver_name
      t.string :email
      t.string :phone
      t.string :receiver_address
      t.integer :status, default: 0

      t.timestamps
    end
  end
end
