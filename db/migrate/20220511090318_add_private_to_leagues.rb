class AddPrivateToLeagues < ActiveRecord::Migration[7.0]
  def change
    add_column :leagues, :private, :boolean, default: false
  end
end
