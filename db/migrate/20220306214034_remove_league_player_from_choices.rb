class RemoveLeaguePlayerFromChoices < ActiveRecord::Migration[6.1]
  def change
    remove_reference :choices, :league_player, null: false, foreign_key: true
  end
end
