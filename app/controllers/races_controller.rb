class RacesController < ApplicationController
  def index
    @races = Race.all
  end

  def new
    @race = Race.new
  end

  def create
    @race = Race.new(race_params)
    @race.season = Season.last

    if @race.save
      reorder_races
      redirect_to leagues_path
    else
      render :new
    end
  end

  private

  def race_params
    params.require(:race).permit(:name, :race_date, :circuit_id)
  end

  def reorder_races
    rounds = Race.all
    rounds = rounds.sort_by(&:race_date)
    rounds.each_with_index do |race, index|
      race.round = index + 1
      race.save
    end
  end
end
