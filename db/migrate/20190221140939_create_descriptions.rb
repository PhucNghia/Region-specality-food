class CreateDescriptions < ActiveRecord::Migration[5.1]
  def change
    create_table :descriptions do |t|
      t.integer :product_id
      t.text :content
      t.string :ingredient
      t.string :processing
      t.string :usage
      t.string :transportation
      t.date :expiry_date
      t.date :manufacturing_date
      t.float :weight

      t.timestamps
    end
  end
end
