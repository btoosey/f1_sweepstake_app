class ChangeRaceDateType < ActiveRecord::Migration[6.1]
  def change
    change_column(:races, :race_date, :datetime)
  end
end
