class TalkingVideosController < ApplicationController

  def index
    @taling_videos = TalkingVideo.all
  end
end
