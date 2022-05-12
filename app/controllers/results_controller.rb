class ResultsController < ApplicationController
  before_action :set_result, only: [:edit, :update, :destroy]

  def index
    policy_scope(Result)
    @race_drivers = RaceDriver.current_race_drivers
    @drivers = list_current_drivers(@race_drivers)
    @results = []
    @race_drivers.each do |race_driver|
      @results << Result.where(race_driver: race_driver)
    end
  end

  def new
    @result = Result.new
    authorize @result
  end

  def create
    @result = Result.new(result_params)
    @result.position_to_points(@result.position)
    if @result.save
      redirect_to results_path
    else
      render :new
    end
    authorize @result
  end

  def edit
    authorize @result
  end

  def update
    authorize @result
    @result.position_to_points(@result.position)
    if @result.update(result_params)
      redirect_to results_path
    else
      render :edit
    end
  end

  def destroy
    authorize @result
    @result.destroy
    redirect_to results_path
  end

  private

  def set_result
    @result = Result.find(params[:id])
  end

  def result_params
    params.require(:result).permit(:race_driver_id, :position)
  end

  def list_current_drivers(race_drivers)
    team_drivers = []
    race_drivers.each do |race_driver|
      team_drivers << race_driver.team_driver.driver unless team_drivers.include?(race_driver.team_driver.driver)
    end
    team_drivers
  end

  def result_driver
    race_driver.team_driver.driver
  end
end
