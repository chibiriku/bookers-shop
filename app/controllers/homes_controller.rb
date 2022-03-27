class HomesController < ApplicationController
  def top
   @book = Book.where(is_active: true).order(created_at: :desc).limit(4)
   @all_ranks = Book.find(Favorite.group(:book_id).order('count(book_id) desc').limit(4).pluck(:book_id))
  @genres = Genre.all
  end
end
