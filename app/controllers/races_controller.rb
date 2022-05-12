class RacesController < ApplicationController
  before_action :set_race, only: :destroy

  def index
    @races = policy_scope(Race)
  end

  def new
    @race = Race.new
    authorize @race
  end

  def create
    @race = Race.new(race_params)
    authorize @race
    @race.season = Season.last

    if @race.save
      races = Race.all
      Race.reorder_races(races)
      redirect_to leagues_path
    else
      render :new
    end
  end

  def destroy
    authorize @race
    @race.destroy
    redirect_to races_path
  end

  private

  def race_params
    params.require(:race).permit(:name, :race_date, :circuit_id)
  end

  def set_race
    @race = Race.find(params[:id])
  end
end
