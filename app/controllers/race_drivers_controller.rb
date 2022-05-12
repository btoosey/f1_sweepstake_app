class RaceDriversController < ApplicationController
  before_action :set_race_driver, only: [:destroy]

  def index
    @race_drivers = policy_scope(RaceDriver)
  end

  def new
    @race_driver = RaceDriver.new
    authorize @race_driver
  end

  def create
    @race_driver = RaceDriver.new(race_driver_params)
    authorize @race_driver
    if @race_driver.save
      redirect_to race_drivers_path
    else
      render :new
    end
  end

  def destroy
    authorize @race_driver
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
