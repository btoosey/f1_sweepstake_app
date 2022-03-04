class ChangeChoices < ActiveRecord::Migration[6.1]
  def change
    add_reference :choices, :league_player, foreign_key: true
    remove_reference :choices, :user, foreign_key: true
  end
end
