class CreateTeamDrivers < ActiveRecord::Migration[6.1]
  def change
    create_table :team_drivers do |t|
      t.references :constructor, null: false, foreign_key: true
      t.references :driver, null: false, foreign_key: true

      t.timestamps
    end
  end
end
