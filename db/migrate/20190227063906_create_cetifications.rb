class CreateCetifications < ActiveRecord::Migration[5.1]
  def change
    create_table :cetifications do |t|
      t.integer :product_id
      t.string :image
      t.string :description
      t.date :expired_at

      t.timestamps
    end
  end
end
