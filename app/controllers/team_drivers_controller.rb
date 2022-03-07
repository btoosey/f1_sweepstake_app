class TeamDriversController < ApplicationController
  before_action :set_team_driver, only: [:destroy]

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

  def destroy
    @team_driver.destroy
    redirect_to team_drivers_path
  end

  private

  def set_team_driver
    @team_driver = TeamDriver.find(params[:id])
  end

  def team_driver_params
    params.require(:team_driver).permit(:driver_id, :constructor_id)
  end
end
