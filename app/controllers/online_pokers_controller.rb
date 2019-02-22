class OnlinePokersController < ApplicationController
  def index
    @online_pokers = OnlinePoker.position_desc.where(published: true).page(params[:page]).per(10)
    @online_pokers_arr = @online_pokers.to_a
  end
end
