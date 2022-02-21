class CreateChoices < ActiveRecord::Migration[6.1]
  def change
    create_table :choices do |t|
      t.references :league, null: false, foreign_key: true
      t.references :result, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true
      t.boolean :submitted

      t.timestamps
    end
  end
end
