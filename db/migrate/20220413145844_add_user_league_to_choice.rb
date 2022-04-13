class AddUserLeagueToChoice < ActiveRecord::Migration[6.1]
  def change
    add_reference :choices, :user_league, null: false, foreign_key: true
  end
end
