class RemoveLeagueFromChoice < ActiveRecord::Migration[6.1]
  def change
    remove_reference :choices, :league, null: false, foreign_key: true
  end
end
