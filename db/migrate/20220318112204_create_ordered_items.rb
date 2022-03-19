class CreateOrderedItems < ActiveRecord::Migration[6.1]
  def change
    create_table :ordered_items do |t|
      t.integer :order_id
      t.integer :book_id
      t.integer :amount
      t.integer :price

      t.timestamps
    end
  end
end
