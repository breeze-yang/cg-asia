class NewsController < ApplicationController
  def index
    @news = Info.page(params[:page]).per(10)
  end
end
