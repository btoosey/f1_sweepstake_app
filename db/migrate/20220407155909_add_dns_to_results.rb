class AddDnsToResults < ActiveRecord::Migration[6.1]
  def change
    add_column :results, :dns, :boolean
  end
end
