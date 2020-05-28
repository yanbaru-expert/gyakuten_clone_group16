class LiveCodingsController < ApplicationController
  PER = 10

  def index
    @live_codings = LiveCoding.page(params[:page]).per(PER)
  end
end
