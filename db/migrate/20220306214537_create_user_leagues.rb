class CreateUserLeagues < ActiveRecord::Migration[6.1]
  def change
    create_table :user_leagues do |t|
      t.references :user, null: false, foreign_key: true
      t.references :league, null: false, foreign_key: true

      t.timestamps
    end
  end
end
