class MoviesController < ApplicationController

  def index
    @film = Movie.all
  end

  def search
    puts " ahahahhahah"
    puts @film
    @film = SearchMovie.new(params[:q]).search
    puts @film
  end

end
