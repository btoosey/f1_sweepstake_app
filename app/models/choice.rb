class Choice < ApplicationRecord
  belongs_to :user_league
  belongs_to :race_driver

  def self.generate_random_choice(race, user_league)
    race_drivers = RaceDriver.where(race: race)
    random_pick = rand(0..19)
    randomly_driver = race_drivers[random_pick]
    choice = Choice.new(user_league: user_league, race_driver: randomly_driver)
    choice.locked = true
    choice.save!
  end
end
