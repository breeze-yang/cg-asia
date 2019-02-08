class VideosController < ApplicationController
  def index
    @videos = Video.where(published: true).id_desc.page(params[:page]).per(10)
  end
end
