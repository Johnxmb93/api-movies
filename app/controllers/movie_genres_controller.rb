class MovieGenresController < ApplicationController
  def index 
    movie_genres = Movie_genre.all
    render json: movie_genres
  end
  def create
    movie_genres = Movie_genre.new(
    genre_id: params["genre_id"],
    movie_id: params["movie_id"])
    if movie_genres.save
      render json: movie_genres.as_json
    else
      render json: {errors: movie_genres.errors.full_messages},
      status: 422 
    end
  end
end
