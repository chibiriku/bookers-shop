class Public::BooksController < ApplicationController
  def index
    @books = Book.where(is_active: true).page(params[:page]).per(8)
  end

  def show
    @book = Book.find(params[:id])
    @book_comment = BookComment.new
  end

  def rank
    @all_ranks = Book.find(Favorite.group(:book_id).order('count(book_id) desc').pluck(:book_id))
    @all_ranks = Kaminari.paginate_array(@all_ranks).page(params[:page]).per(8)
  end

  def populer
    @book = Book.where(is_active: true).order(created_at: :desc)
    @book = Kaminari.paginate_array(@book).page(params[:page]).per(8)
  end
end
