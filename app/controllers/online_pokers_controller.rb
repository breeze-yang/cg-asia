class OnlinePokersController < ApplicationController
  def index
    @online_pokers = OnlinePoker.id_desc.where(published: true).page(params[:page]).per(10)
  end
end
