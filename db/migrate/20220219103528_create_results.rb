class CreateResults < ActiveRecord::Migration[6.1]
  def change
    create_table :results do |t|
      t.references :race, null: false, foreign_key: true
      t.references :constructor, null: false, foreign_key: true
      t.references :driver, null: false, foreign_key: true
      t.integer :position
      t.integer :points

      t.timestamps
    end
  end
end
