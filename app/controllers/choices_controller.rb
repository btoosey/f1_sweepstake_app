class ChoicesController < ApplicationController
  before_action :set_choice, only: [:show, :edit, :update]
  before_action :set_user_league, only: [:new, :create]

  def show
  end

  def new
    @choice = Choice.new
    @current_race = Race.find(params[:race])
  end

  def create
    @choice = Choice.new(choice_params)
    @choice.user_league = @user_league
    @choice.locked = false

    if @choice.save
      redirect_to leagues_path
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @choice.update(choice_params)
      redirect_to league_path(@choice.user_league.league.id)
    else
      render :show
    end
  end

  private

  def choice_params
    params.require(:choice).permit(:race_driver_id, :user_league_id)
  end

  def set_choice
    @choice = Choice.find(params[:id])
  end

  def set_user_league
    @user_league = UserLeague.find(params[:user_league_id])
  end
end
