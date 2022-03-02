class AddDnfToResults < ActiveRecord::Migration[6.1]
  def change
    add_column :results, :dnf, :boolean
  end
end
