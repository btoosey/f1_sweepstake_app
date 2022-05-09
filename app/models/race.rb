class Race < ApplicationRecord
  belongs_to :season
  belongs_to :circuit

  has_many :race_drivers
  has_many :league_races, dependent: :destroy

  def to_label
    "#{season.year} - #{name}"
  end

  def self.season_race_list(year)
    season = Season.where(year: year).first
    races = Race.where(season: season)
    Race.reorder_races(races)
  end

  def self.reorder_races(races)
    races = races.sort_by(&:race_date)
    races.each_with_index do |race, index|
      race.round = index + 1
      race.save
    end
  end

  def self.upcoming_races
    future_races = Race.where("race_date >= ?", DateTime.now)
    future_races.sort_by(&:race_date)
  end

  def self.upcoming_race
    Race.upcoming_races.first
  end
end
