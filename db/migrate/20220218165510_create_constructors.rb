class CreateConstructors < ActiveRecord::Migration[6.1]
  def change
    create_table :constructors do |t|
      t.string :name

      t.timestamps
    end
  end
end
