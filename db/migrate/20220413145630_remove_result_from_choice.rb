class RemoveResultFromChoice < ActiveRecord::Migration[6.1]
  def change
    remove_reference :choices, :result, null: false, foreign_key: true
  end
end
