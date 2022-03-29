class Public::FavoritesController < ApplicationController
  def create
    @book = Book.find(params[:book_id])
    @favorite = current_customer.favorites.new(book_id: @book.id)
    @favorite.save
  end

  def destroy
    #binding.pry
    @book = Book.find(params[:book_id])
    @favorite = current_customer.favorites.find_by(book_id: @book.id)
    @favorite.destroy
  end
end
