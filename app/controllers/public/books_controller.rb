class Public::BooksController < ApplicationController
  def index
    @books = Book.where(is_active: true).page(params[:page]).per(8)
  end

  def show
    @book = Book.find(params[:id])
    @book_comment = BookComment.new
  end
end
