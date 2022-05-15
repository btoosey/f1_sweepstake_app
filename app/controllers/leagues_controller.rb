class LeaguesController < ApplicationController
  before_action :set_league, only: [:show, :edit, :update, :destroy]

  def index
    @leagues = policy_scope(League)
    @user = current_user if current_user
  end

  def show
    authorize @league
    @user_leagues = @league.user_leagues.all
    @league_races = @league.league_races
    @choice = Choice.new
  end

  def new
    @league = League.new
    authorize @league
  end

  def create
    @league = League.new(league_params)
    @league.user = current_user if current_user
    @league.season = Season.where(year: 2022).first
    @league.generate_league_races
    if @league.save
      UserLeague.create(league: @league, user: current_user)
      redirect_to league_path(@league)
      flash[:alert] = "You have successfully created a league!"
    else
      render :new
    end
    authorize @league
  end

  def edit
    authorize @league
  end

  def update
    authorize @league
    if @league.update(league_params)
      redirect_to league_path(@league.id)
    else
      render :show
    end
  end

  def destroy
    authorize @league
    @league.destroy
    redirect_to leagues_path
  end

  private

  def league_params
    params.require(:league).permit(:name, :private)
  end

  def set_league
    @league = League.find(params[:id])
  end
end
