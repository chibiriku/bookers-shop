class CartItem < ApplicationRecord
  belongs_to :customer
  belongs_to :book
  belongs_to :order

  # 小計
  def subtotal
    book.price * amount
  end

end
