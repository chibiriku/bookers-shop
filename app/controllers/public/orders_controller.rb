class Public::OrdersController < ApplicationController
  def index
  end

  def new
    @order = Order.new
  end

  def show
  end

  def confirm
  end

  def thanks
  end
  
  private
  # ストロングパラメータ
  
  def address_params
    params.require(:order).permit(:postal_code,:address,:name)
  end


  def order_params
    params.require(:order).permit(:customer_id, :postage, :total_price, :name, :postal_code, :address, :payment_method, :status)
  end
end
