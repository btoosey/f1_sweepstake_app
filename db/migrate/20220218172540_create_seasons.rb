class CreateSeasons < ActiveRecord::Migration[6.1]
  def change
    create_table :seasons do |t|
      t.integer :year

      t.timestamps
    end
  end
end
