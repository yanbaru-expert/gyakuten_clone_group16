class WritingsController < ApplicationController

  def index
    @writings = Writing.all
  end
end
