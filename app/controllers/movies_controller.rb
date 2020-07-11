class MoviesController < ApplicationController
  PER = 18

  def index
    @movies = Movie.page(params[:page]).per(PER)
    @watched_movie_ids = current_user.watches.pluck(:movie_id)
  end
end