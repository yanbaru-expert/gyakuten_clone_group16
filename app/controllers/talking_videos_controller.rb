class TalkingVideosController < ApplicationController

  def index
    @talking_videos = TalkingVideo.all
  end
end
