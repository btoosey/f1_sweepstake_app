class RaceDriver < ApplicationRecord
  belongs_to :race
  belongs_to :team_driver
  has_one :result

  def self.current_race_drivers
    season = Season.where(year: Date.today.year)
    races = Race.where(season: season.first)
    race_drivers = []
    races.each do |race|
      RaceDriver.where(race: race).each do |race_driver|
        race_drivers << race_driver unless race_drivers.include?(race_driver)
      end
    end
    race_drivers
  end

  def to_label
    "#{team_driver.driver.full_name} - #{team_driver.constructor.name}"
  end
end
