class Admins::GenresController < ApplicationController
  def index
    @genre = Genre.new
    @genres = Genre.all
  end

  def create
    genre = Genre.new(genre_params)
      if genre.save
       redirect_to request.referer
      else
        render :new
      end
  end

  def edit
    @genre=Genre.find(params[:id])
  end

  def update
    @genre=Genre.find(params[:id])
      if @genre.update(genre_params)
        redirect_to admins_genres_path
      else
        render :new
      end
  end

  private

  def  genre_params
    params.require(:genre).permit(:name)
  end
end
