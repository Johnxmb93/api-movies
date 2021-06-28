class ActorsController < ApplicationController
  def index 
    actors = Actor.all.order(age: :desc)
    render json: actors.as_json
end

