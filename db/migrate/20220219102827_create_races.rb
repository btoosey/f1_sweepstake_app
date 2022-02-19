class CreateRaces < ActiveRecord::Migration[6.1]
  def change
    create_table :races do |t|
      t.references :season, null: false, foreign_key: true
      t.references :circuit, null: false, foreign_key: true
      t.integer :round
      t.string :name

      t.timestamps
    end
  end
end
