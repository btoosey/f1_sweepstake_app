class ChangeLeagueSeasonDataType < ActiveRecord::Migration[6.1]
  def change
    remove_column :leagues, :season
    add_reference :leagues, :season, foreign_key: true
  end
end
