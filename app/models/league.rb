class League < ApplicationRecord
  belongs_to :user
  has_many :league_players, dependent: :destroy
end
