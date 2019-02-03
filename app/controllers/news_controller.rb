class NewsController < ApplicationController
  def index
    @news = Info.where(published: true).page(params[:page]).per(10)
  end

  def show
    @new = Info.find(params[:id])
  end
end
