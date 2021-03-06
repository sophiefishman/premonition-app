class FavoritesController < ApplicationController
  before_action :authenticate_user

  def index
    favorites = current_user.favorites.order('created_at ASC')
    render json: favorites
  end

  def create
    favorite = Favorite.new(
    tmdb_api_id: params[:tmdb_api_id],
    user_id: current_user.id,
    review: params[:review]
    )
    favorite.save
    render json: favorite
  end

  def update
    favorite = Favorite.find_by(id: params[:id])
    favorite.tmdb_api_id = params[:tmdb_api_id] || favorite.tmdb_api_id
    favorite.user_id = current_user.id
    favorite.review = params[:review] || favorite.review
    favorite.save
    render json: favorite
  end

  def destroy
    favorite = Favorite.find_by(id: params[:id])
    favorite.destroy
    render json: {message: "This favorite has been removed!"}
  end
end
