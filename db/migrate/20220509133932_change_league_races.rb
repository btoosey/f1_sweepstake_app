class ChangeLeagueRaces < ActiveRecord::Migration[7.0]
  def change
    add_reference :league_races, :league, null: false, foreign_key: true
    add_reference :league_races, :race, null: false, foreign_key: true
  end
end
