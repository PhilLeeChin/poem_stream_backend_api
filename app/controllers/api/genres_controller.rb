class GenresController < ApplicationController
  def index
    genres = Genre.all
    #render json: genres
    render json: GenreSerializer.new(genre)
  end

  # def show
  #   genre = Genre.find(params[:id])
  #   render json: genre
  # end
end
