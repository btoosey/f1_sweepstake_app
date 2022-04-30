class LockChoicesJob < ApplicationJob
  queue_as :default

  def perform(_)
    upcoming_race = Race.upcoming_race
    race_drivers = RaceDriver.where(race: upcoming_race)
    race_drivers.each do |race_driver|
      choices = Choice.where(race_driver: race_driver)
      if upcoming_race.race_date - DateTime.now <= 3
        choices.each do |choice|
          choice.locked = true
        end
      end
    end
  end
end
