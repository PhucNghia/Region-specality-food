class CreateStatisticals < ActiveRecord::Migration[5.1]
  def change
    create_table :statisticals do |t|
      t.integer :quantity

      t.timestamps
    end
  end
end
