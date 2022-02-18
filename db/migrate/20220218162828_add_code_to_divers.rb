class AddCodeToDivers < ActiveRecord::Migration[6.1]
  def change
    add_column :drivers, :code, :string, limit: 3
  end
end
