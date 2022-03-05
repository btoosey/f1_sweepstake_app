class CreateRaceDrivers < ActiveRecord::Migration[6.1]
  def change
    create_table :race_drivers do |t|
      t.references :race, null: false, foreign_key: true
      t.references :team_driver, null: false, foreign_key: true

      t.timestamps
    end
  end
end
