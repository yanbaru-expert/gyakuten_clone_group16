class LiveCodingsController < ApplicationController

  def index
    @live_codings = LiveCoding.all
  end
end
