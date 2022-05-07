class LockPreviousRaceChoicesJob < ApplicationJob
  queue_as :default

  def perform(*args)
    previous_races = Race.where("race_date <= ?", DateTime.now)
    previous_races.each do |race|
      race_drivers = RaceDriver.where(race: race)
      race_drivers.each do |race_driver|
        choices = Choice.where(race_driver: race_driver)
        choices.each do |choice|
          if choice.locked == false
            choice.locked = true
            choice.save!
          end
        end
      end
    end
  end
end
