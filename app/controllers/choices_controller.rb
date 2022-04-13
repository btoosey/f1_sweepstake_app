class ChoicesController < ApplicationController
  def new
    @choice = Choice.new
    @race_drivers = RaceDriver.where(race: @race)
  end

  def create
  end
end
