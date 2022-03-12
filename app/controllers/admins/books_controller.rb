class Admins::BooksController < ApplicationController
  def new
    @book = Book.new
  end

  def create
    @book = Book.new(book_params)
    @book.genre_id = params[:book][:genre_id]
      if @book.save
        redirect_to admins_book_path(@book.id)
      else
        render :new
      end
  end

  def index
    @books = Book.all
  end

  def edit
    @book = Book.find(params[:id])
  end

  def update
    @book=Book.find(params[:id])
      if @book.update(book_params)
        redirect_to admins_book_path
      else
        render :new
      end
  end

  def show
    @book = Book.find(params[:id])
  end

  def destroy
  end

  private

  def  book_params
    params.require(:book).permit(:image_id, :name, :price, :is_active, :synopsis, :genre_id, :author)
  end
end
