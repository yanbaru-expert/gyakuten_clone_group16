class MoviesController < ApplicationController
before_action :authenticate_user!

  def index
    @movies = Movie.all unless user_signed_in?
  end
end