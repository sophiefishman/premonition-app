Rails.application.routes.draw do
 
  post "/users" => "users#create"
  get "/users/:id" => "users#show"
  patch "/users/:id" => "users#update"
  delete "/users/:id" => "users#destroy"

  post "/sessions" => "sessions#create"

  get "/favorites" => "favorites#index"
  post "/favorites" => "favorites#create"
  patch "/favorites/:id" => "favorites#update"
  delete "favorites/:id" => "favorites#destroy"

  get "/movies" => "movies#index"
  get "/movies/:id" => "movies#show"



end
