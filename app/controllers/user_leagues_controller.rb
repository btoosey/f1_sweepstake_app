class UserLeaguesController < ApplicationController
  before_action :set_user_league, only: [:destroy]

  def create
    @league = League.find(params[:league_id])
    @user = current_user
    @user_league = UserLeague.new(league: @league, user: @user)
    authorize @user_league
    if @user_league.save
      redirect_to league_path(@league), message: "You have successfully joined the league!"
    else
      redirect_to league_path(@league), message: "Unable to join the league"
    end
  end

  def destroy
    @league = @user_league.league
    authorize @user_league
    @user_league.destroy
    redirect_to league_path(@league)
  end

  private

  def set_user_league
    @user_league = UserLeague.find(params[:id])
  end
end
