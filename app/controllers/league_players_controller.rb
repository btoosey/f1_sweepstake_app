class LeaguePlayersController < ApplicationController
  def create
    @league = League.find(params[:league_id])
    @user = current_user
    @league_player = LeaguePlayer.new(league: @league, user: @user)
    if @league_player.save
      redirect_to league_path(@league), message: "You have successfully joined the league!"
    else
      redirect_to league_path(@league), message: "Unable to join the league"
    end
  end
end
