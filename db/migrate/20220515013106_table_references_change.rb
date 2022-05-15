class TableReferencesChange < ActiveRecord::Migration[6.1]
  def change
    add_reference :orders, :user, index: true
    add_reference :items, :order, index: true
  end
end
