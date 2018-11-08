class SearchMovie
  Tmdb::Api.key(Rails.application.credentials[:ma_cle_tdbm])

  def initialize(movie)
    @user_search = movie
    @arrayofmovies = []
  end

  def search
    @film = Tmdb::Movie.find(@user_search)
    puts @film
      @film.each do |film|
        temp_hash = {}
          temp_hash[:name] = film.title
          temp_hash[:date] = film.release_date
          temp_hash[:img] = film.poster_path
        @arrayofmovies << temp_hash
      end
      @arrayofmovies
  end
end
