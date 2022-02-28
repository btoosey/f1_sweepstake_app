class LeaguePlayer < ApplicationRecord
  belongs_to :league
  belongs_to :user

  validates :league, presence: true, uniqueness: { scope: :user, message: "You have already joined this league" }
end
