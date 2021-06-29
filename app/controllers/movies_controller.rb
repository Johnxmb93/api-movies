class MoviesController < ApplicationController
  def index
    movies = Movie.where(english: true )
    render json: movies.as_json
  end
  def show
    movies_id = params["id"]
    movies = Movie.find(movies_id)
    render json: movies.as_json
  end
  def create
    movies = Movie.new(
    title:  params["title"],
    year:  params["year"],
    plot: params["plot"],
    director: params["director"],
    english: params["english"])
    if movies.save
      render json: movies.as_json
    else
      render json: {errors: movies.errors.full_message},
      status: 422 
    end
  end
  def update
    movies_id = params["id"]
    movies = Movie.find(movies_id)
    movies.title = params["title"] || movies.title
    movies.year = params["year"] || movies.year
    movies.plot = params["plot"] || movies.plot
    movies.director = params["director"] || movies.director
    movies.english = params["english"] || movies.english
    if  movies.save
      render json: movies.as_json
    else 
      render json: {errors: movies.errors.full_message},
      status: 422 
  end
  def delete
    movies_id = params["id"]
    movies = Movie.find(movies_id)
    movies.destroy
    render json: {message: "movie terminated"}
  end
end
