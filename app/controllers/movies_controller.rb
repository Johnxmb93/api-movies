class MoviesController < ApplicationController
  def index
    movies = Movie.all 
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
    plot: params["plot"])
    movies.save
    render json: movies.as_json
  end
  def update
    movies_id = params["id"]
    movies = Movie.find(movies_id)
    movies.title = params["title"] || movies.title
    movies.year = params["year"] || movies.year
    movies.plot = params["plot"] || movies.plot
    movies.save
    render json: movies.as_json
  end
  def delete
    movies_id = params["id"]
    movies = Movie.find(movies_id)
    movies.destroy
    render json: {message: "movie terminated"}
  end
end
