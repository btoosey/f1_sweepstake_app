class RemoveRaceFromResults < ActiveRecord::Migration[6.1]
  def change
    remove_reference :results, :race, null: false, foreign_key: true
  end
end
