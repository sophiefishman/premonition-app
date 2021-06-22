class Favorite < ApplicationRecord
  belongs_to :user
  def movie
    #logic to query the third party api for the correct movie
    #get back an object of movie data
    response = HTTP.get("https://api.themoviedb.org/3/movie/#{tmdb_api_id}?api_key=tmdb_api_key")
    movie = response.parse(:json)
    return movie
  end
    
  #or build custom object below 
  #   return{
  #     id: movie["id"]
  #     original_title: movie["original_title"]
  #   }
  # end

end
