class ActorsController < ApplicationController
  def index 
    actors = Actor.all
    render json: actors
  end
  def create
    actors = Actor.new(
    first_name:  params["first_name"],
   last_name:  params["last_name"],
    known_for: params["known_for"],
    actor_age: params["actor_age"],
    actor_gender: params["actor_gender"],
    movie_id: params["movie_id"])
    actors.save
    render json: actors
  end
  def update
    actors_id = params["id"]
    actors = Actor.find(actors_id)
    actors.first_name = params["first_name"] | actors.first_name
    actors.last_name = params["last_name"] || actors.last_name
    actors.known_for = params["known_for"] || actors.known_for
    actors.actor_age = params["actor_age"] || actors.actor_age
    actors.actor_gender = params["actor_gender"] || actors.actor_gender
    actors.movie_id =params["movie_id"] || actors.movie_id
    actors.save
    render json: actors     
  end
end

