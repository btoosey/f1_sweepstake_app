class TeamDriversController < ApplicationController
  def index
    @team_drivers = TeamDriver.all
  end

  def new
    @team_driver = TeamDriver.new
  end

  def create
    @team_driver = TeamDriver.new(team_driver_params)
    if @team_driver.save
      redirect_to team_drivers_path
    else
      render :new
    end
  end

  private

  def team_driver_params
    params.require(:team_driver).permit(:driver_id, :constructor_id)
  end
end
