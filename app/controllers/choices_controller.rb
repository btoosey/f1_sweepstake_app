class ChoicesController < ApplicationController

  before_action :set_choice, only: [:show]

  def show
  end

  def new
    @choice = Choice.new
    @current_race = Race.find(params[:race])
    @user_league = UserLeague.find(params[:user_league_id])
  end

  def create
    @choice = Choice.new(choice_params)
    @user_league = UserLeague.find(params[:user_league_id])
    @choice.user_league = @user_league
    @choice.submitted = false

    if @choice.save
      redirect_to leagues_path
    else
      render :new
    end
  end

  private

  def choice_params
    params.require(:choice).permit(:race_driver_id, :user_league_id)
  end

  def set_choice
    @choice = Choice.find(params[:id])
  end
end
