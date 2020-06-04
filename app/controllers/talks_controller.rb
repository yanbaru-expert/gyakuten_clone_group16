class TalksController < ApplicationController
  PER = 10
  def index 
    @talks = Talk.page(params[:page]).per(PER)
  end
end