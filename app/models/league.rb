class League < ApplicationRecord
  belongs_to :user
  belongs_to :season
  has_many :league_races, dependent: :destroy
  has_many :user_leagues, dependent: :destroy
end
