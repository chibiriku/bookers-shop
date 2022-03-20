class CreateOrders < ActiveRecord::Migration[6.1]
  def change
    create_table :orders do |t|
      t.integer :customer_id
      t.integer :postage
      t.integer :total_price
      t.string :name
      t.string :postal_code
      t.string :address
      t.integer :payment_method, default: 0
      t.integer :status

      t.timestamps
    end
  end
end
