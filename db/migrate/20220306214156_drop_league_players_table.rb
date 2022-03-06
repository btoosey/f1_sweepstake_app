class DropLeaguePlayersTable < ActiveRecord::Migration[6.1]
  def change
    drop_table :league_players do |t|
      t.bigint "league_id", null: false
      t.bigint "user_id", null: false
    end
  end
end
