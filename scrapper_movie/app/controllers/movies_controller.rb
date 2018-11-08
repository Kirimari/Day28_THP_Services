class MoviesController < ApplicationController

  def index

  end

  def search
    @film = SearchMovie.new(params[:q]).search
  end

end
