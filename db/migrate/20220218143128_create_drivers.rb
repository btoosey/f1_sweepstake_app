class CreateDrivers < ActiveRecord::Migration[6.1]
  def change
    create_table :drivers do |t|
      t.integer :number
      t.string :forename
      t.string :surname

      t.timestamps
    end
  end
end
