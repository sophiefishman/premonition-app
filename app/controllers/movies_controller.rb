class MoviesController < ApplicationController

  def index
    query_string = params[:query].gsub(" ", "+")
    movies = HTTP.get("https://api.themoviedb.org/3/search/movie?api_key=#{Rails.application.credentials.tmdb_api_key}&query=#{query_string}")
    render json: movies.parse(:json)["results"]
  end

  def show
    response = HTTP.get("https://api.themoviedb.org/3/movie/#{params[:id]}?api_key=#{Rails.application.credentials.tmdb_api_key}&append_to_response=recommendations")
    movie = response.parse(:json)
    render json: movie
    
  end
end
