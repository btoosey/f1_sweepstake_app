class AddRaceDriverToResults < ActiveRecord::Migration[6.1]
  def change
    remove_reference :results, :team_driver, foreign_key: true
    add_reference :results, :race_driver, foreign_key: true
  end
end
