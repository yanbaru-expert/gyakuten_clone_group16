class MoviesController < ApplicationController
  PER = 10

  def index
    @movies = Movie.page(params[:page]).per(PER)
    @movie_level = Movie.movie_level(params[:page])
  end
end