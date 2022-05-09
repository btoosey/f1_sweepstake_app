class League < ApplicationRecord
  belongs_to :user
  belongs_to :season
  has_many :league_races, dependent: :destroy
  has_many :user_leagues, dependent: :destroy

  def generate_league_races
    Race.upcoming_races.each do |race|
      LeagueRace.create(league: self, race: race)
    end
  end
end
