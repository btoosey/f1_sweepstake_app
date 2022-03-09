class RaceDriver < ApplicationRecord
  belongs_to :race
  belongs_to :team_driver

  def self.current_drivers
    year = Date.today.year
    season = Season.where(year: year)
    races = Race.where(season: season.first)
    team_drivers = []
    races.each do |race|
      RaceDriver.where(race: race).each do |race_driver|
        team_drivers << race_driver.team_driver unless team_drivers.include?(race_driver.team_driver)
      end
    end
    team_drivers
  end
end
