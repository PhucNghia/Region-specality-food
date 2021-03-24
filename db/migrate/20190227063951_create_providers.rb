class CreateProviders < ActiveRecord::Migration[5.1]
  def change
    create_table :providers do |t|
      t.string :name
      t.string :address
      t.string :phone
      t.boolean :status

      t.timestamps
    end
  end
end
