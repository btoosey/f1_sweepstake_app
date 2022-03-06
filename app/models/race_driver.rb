class RaceDriver < ApplicationRecord
  belongs_to :race
  belongs_to :team_driver
end
