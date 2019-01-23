class TournamentController < ApplicationController
  def index
    @main_event = MainEvent.find_by!(published: true)
  end
end
