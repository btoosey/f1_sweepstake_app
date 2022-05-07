class RandomizeUnchosenChoicesJob < ApplicationJob
  queue_as :default

  def perform(*args)
    upcoming_race = Race.upcoming_race
    return unless upcoming_race.race_date - DateTime.now <= 3

    leagues = League.where(season: Season.where(year: 2022).first)
    leagues.each do |league|
      user_leagues = UserLeague.where(league: league)
      race_drivers = RaceDriver.where(race: upcoming_race)
      user_leagues.each do |user_league|
        temp = 0
        race_drivers.each do |race_driver|
          break if Choice.where(user_league: user_league, race_driver: race_driver.first)

          temp += 1
        end
        Choice.generateRandomChoice(upcoming_race, user_league) if temp == 20
      end
    end
  end
end
