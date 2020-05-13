class MoviesController < ApplicationController
  PER = 10

  def index
    @movies = Movie.page(params[:page]).per(PER)
  end
end