class CreateCircuits < ActiveRecord::Migration[6.1]
  def change
    create_table :circuits do |t|
      t.string :name
      t.string :location
      t.string :country

      t.timestamps
    end
  end
end
