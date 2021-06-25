class FavoritesController < ApplicationController
  before_action :authenticate_user

  def index
    # favorite = current_user.favorites
    tmdb_api_id = current_user.favorites
    favorite = HTTP.get("https://api.themoviedb.org/3/movie/#{tmdb_api_id}?api_key=#{Rails.application.credentials.tmdb_api_key}")
    render json: favorite.as_json
  end

  def create
    favorite = Favorite.new(
    tmdb_api_id: params[:tmdb_api_id],
    user_id: current_user.id,
    review: params[:review]
    )
    favorite.save
    render json: favorite.as_json
  end

  def update
    favorite = Favorite.find_by(id: params[:id])
    favorite.tmdb_api_id = params[:tmdb_api_id] || favorite.tmdb_api_id
    favorite.user_id = current_user.id
    favorite.review = params[:review] || favorite.review
    favorite.save
    render json: favorite.as_json
  end

  def destroy
    favorite = Favorite.find_by(id: params[:id])
    favorite.destroy
    render json: {message: "This favorite has been removed!"}
  end
end
