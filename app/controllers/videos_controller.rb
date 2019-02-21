class VideosController < ApplicationController
  def index
    @videos = Video.where(published: true).position_desc.page(params[:page]).per(10)
    @videos_arr = @videos.to_a
  end
end
