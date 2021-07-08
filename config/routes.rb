Rails.application.routes.draw do
  get "/movies",controller: "movies",action: "index"
  get "/movies/:id",controller: "movies",action: "show"
  post "/movies",controller: "movies",action: "create"
  patch "movies/:id",controller: "movies",action: "update"
  delete "movies/:id",controller: "movies",action: "destroy"
  get "/actors",controller: "actors",action: "index"

  post "/users" => "users#create"
  post "/sessions" => "sessions#create"
  
  get "/movie_genres" => "movie_genres#index"
  post "/movie_genres" => "movie_genres#create"
end
