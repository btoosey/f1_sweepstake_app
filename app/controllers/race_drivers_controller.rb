class RaceDriversController < ApplicationController
  def index
    @race_drivers = RaceDriver.all
  end
end
