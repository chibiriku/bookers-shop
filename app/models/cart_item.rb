class CartItem < ApplicationRecord
  belongs_to :customer
  belongs_to :book

  # 小計
  def subtotal
    book.add_price * amount
  end

end
