class CreateLeagueRaces < ActiveRecord::Migration[7.0]
  def change
    create_table :league_races do |t|

      t.timestamps
    end
  end
end
