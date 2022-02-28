class DriversController < ApplicationController
  before_action :set_driver, only: :destroy

  def index
    @drivers = Driver.all
  end

  def new
    @driver = Driver.new
  end

  def create
    @driver = Driver.new(driver_params)
    if @driver.save
      redirect_to drivers_path
    else
      render :new
    end
  end

  def destroy
    @driver.destroy
    redirect_to drivers_path
  end

  private

  def set_driver
    @driver = Driver.find(params[:id])
  end

  def driver_params
    params.require(:driver).permit(:number, :forename, :surname, :code)
  end
end
