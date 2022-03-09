class ResultsController < ApplicationController
  before_action :set_result, only: [:edit, :update, :destroy]

  def index
    @drivers = RaceDriver.current_drivers
    # @results = Result.all
  end

  def new
    @result = Result.new
  end

  def create
    @result = Result.new(result_params)
    @result.position_to_points(@result.position)
    if @result.save
      redirect_to results_path
    else
      render :new
    end
  end

  def edit
  end

  def update
    @result.position_to_points(@result.position)
    if @result.update(result_params)
      redirect_to results_path
    else
      render :edit
    end
  end

  def destroy
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
end
