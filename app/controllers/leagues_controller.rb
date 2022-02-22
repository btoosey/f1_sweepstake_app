class LeaguesController < ApplicationController

  def index
    @leagues = League.all
  end

  def new
    @league = League.new
  end

end
