class ChangeSubmittedColumnToLocked < ActiveRecord::Migration[6.1]
  def change
    rename_column :choices, :submitted, :locked
  end
end
