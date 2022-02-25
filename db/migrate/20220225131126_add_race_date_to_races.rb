class AddRaceDateToRaces < ActiveRecord::Migration[6.1]
  def change
    add_column :races, :race_date, :date
  end
end
