class ResultsController < ApplicationController
  def index
    @drivers = Driver.all
    @results = Result.all
  end

  def new
    @result = Result.new
  end

  def create
    @result = Result.new(result_params)
    if @result.save
      redirect_to results_path
    else
      render :new
    end
  end

  private

  def result_params
    params.require(:result).permit(:race_id, :driver_id, :constructor_id, :position)
  end
end
