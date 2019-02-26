class CreateProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :products do |t|
      t.string :title
      t.string :name
      t.string :image
      t.float :price
      t.float :discount
      t.string :status
      t.integer :quantity
      t.integer :region_id
      t.integer :category_id
      t.integer :provider_id

      t.timestamps
    end
  end
end
