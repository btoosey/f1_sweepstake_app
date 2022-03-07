class RaceDriversController < ApplicationController
  before_action :set_race_driver, only: [:destroy]

  def index
    @race_drivers = RaceDriver.all
  end

  def new
    @race_driver = RaceDriver.new
  end

  def create
    @race_driver = RaceDriver.new(race_driver_params)
    if @race_driver.save
      redirect_to race_drivers_path
    else
      render :new
    end
  end

  def destroy
    @race_driver.destroy
    redirect_to race_drivers_path
  end

  private

  def set_race_driver
    @race_driver = RaceDriver.find(params[:id])
  end

  def race_driver_params
    params.require(:race_driver).permit(:team_driver_id, :race_id)
  end
end
