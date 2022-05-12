class DriversController < ApplicationController
  before_action :set_driver, only: :destroy

  def index
    @drivers = policy_scope(Driver)
    @driver = Driver.new
  end

  def new
    @driver = Driver.new
    authorize @driver
  end

  def create
    @driver = Driver.new(driver_params)
    authorize @driver
    if @driver.save
      redirect_to drivers_path
    else
      render :new
    end
  end

  def destroy
    authorize @driver
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
