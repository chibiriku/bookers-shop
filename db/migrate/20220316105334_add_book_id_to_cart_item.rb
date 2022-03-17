class AddBookIdToCartItem < ActiveRecord::Migration[6.1]
  def change
    add_column :cart_items, :book_id, :integer
  end
end
