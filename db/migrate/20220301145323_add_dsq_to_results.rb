class AddDsqToResults < ActiveRecord::Migration[6.1]
  def change
    add_column :results, :dsq, :boolean
  end
end
