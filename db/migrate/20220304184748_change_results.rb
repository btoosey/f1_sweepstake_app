class ChangeResults < ActiveRecord::Migration[6.1]
  def change
    remove_reference :results, :driver, foreign_key: true
    remove_reference :results, :constructor, foreign_key: true
    add_reference :results, :team_driver, foreign_key: true
  end
end
