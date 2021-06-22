class Favorite < ApplicationRecord
  belongs_to :user
  # def movie
  #   response = HTTP.get("https://api.themoviedb.org/3/movie/550?api_key=tmdb_api_key")
  #   movie = response.parse(:json)
  #   return{
  #     id: movie["id"]
  #     original_title: movie["original_title"]
  #     overview: movie["overview"]
  #   }
  # end

end
