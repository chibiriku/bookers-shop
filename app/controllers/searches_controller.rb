class SearchesController < ApplicationController
  def search
		@content = params[:content]
		@book = Book.where(is_active: true).search_for(@content)
	end

	def genresearch
		@content = params[:content]
		@genre = Genre.find_by(name: @content)
		@books = Book.where(is_active: true, genre_id: @genre.id)
	end
end
