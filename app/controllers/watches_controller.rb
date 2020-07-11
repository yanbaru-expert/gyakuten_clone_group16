class WatchesController < ApplicationController
  def create
    current_user.watches.create!(movie_id: params[:movie_id])
    redirect_to root_path
  end

  def destroy
    current_user.watches.find_by(movie_id: params[:movie_id]).destroy!
    redirect_to root_path
  end
end