class AddOpenToChoices < ActiveRecord::Migration[6.1]
  def change
    add_column :choices, :open, :boolean
  end
end
