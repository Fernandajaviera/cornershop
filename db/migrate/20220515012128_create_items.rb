class CreateItems < ActiveRecord::Migration[6.1]
  def change
    create_table :items do |t|
      t.string :name
      t.integer :stock
      t.integer :price
      t.boolean :available

      t.timestamps
    end
  end
end
