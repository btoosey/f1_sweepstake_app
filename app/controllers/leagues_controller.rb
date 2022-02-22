class LeaguesController < ApplicationController

  def index
    @leagues = League.all
    @user = current_user
  end

end
