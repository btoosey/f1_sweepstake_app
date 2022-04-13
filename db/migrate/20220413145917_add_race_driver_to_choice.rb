class AddRaceDriverToChoice < ActiveRecord::Migration[6.1]
  def change
    add_reference :choices, :race_driver, null: false, foreign_key: true
  end
end
