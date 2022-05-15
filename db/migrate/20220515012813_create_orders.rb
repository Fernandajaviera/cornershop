class CreateOrders < ActiveRecord::Migration[6.1]
  def change
    create_table :orders do |t|
      t.string :store_name
      t.integer :dispatch_price
      t.date :dispatch_date

      t.timestamps
    end
  end
end
