class NewsController < ApplicationController
  def index
    @news = Info.where(published: true).id_desc.page(params[:page]).per(10)
    @news_arr = @news.to_a
  end

  def show
    @new = Info.find(params[:id])
  end
end
