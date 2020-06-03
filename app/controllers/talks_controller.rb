class TalksController < ApplicationController

  def index 
    @talks = Talks.all
  end
end