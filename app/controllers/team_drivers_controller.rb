class TeamDriversController < ApplicationController
  def index
    @team_drivers = TeamDriver.all
  end
end
