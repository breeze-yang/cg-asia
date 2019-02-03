class VideosController < ApplicationController
  def index
    @videos = Video.where(published: true).page(params[:page]).per(10)
  end
end
