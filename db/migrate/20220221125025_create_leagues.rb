class CreateLeagues < ActiveRecord::Migration[6.1]
  def change
    create_table :leagues do |t|
      t.string :name
      t.integer :season
      t.integer :length
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
