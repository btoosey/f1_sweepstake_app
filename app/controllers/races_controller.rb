class RacesController < ApplicationController
  def new
    @race = Race.new
  end

  def create
    @race = Race.new(race_params)

    @race.season = Season.last

    if @race.save
      redirect_to leagues_path
    else
      render :new
    end
  end

  private

  def race_params
    params.require(:race).permit(:name, :race_date, :circuit_id)
  end
end
