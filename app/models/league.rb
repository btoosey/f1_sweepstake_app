class League < ApplicationRecord
  belongs_to :user
  belongs_to :season
  has_many :league_races, dependent: :destroy
  has_many :user_leagues, dependent: :destroy

  def self.generate_league_races
    upcoming_races = Race.where("race_date >= ?", DateTime.now)
    upcoming_races.each do |race|
      LeagueRace.new(league: self, race: race)
    end
  end
end
