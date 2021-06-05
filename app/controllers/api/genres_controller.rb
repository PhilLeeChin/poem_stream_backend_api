class GenresController < ApplicationController
  def index
    genres = Genre.all
    #render json: genres
    render json: GenreSerializer.new(genre)
  end
end
