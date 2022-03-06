class UserLeague < ApplicationRecord
  belongs_to :user
  belongs_to :league

  validates :league, presence: true, uniqueness: { scope: :user, message: "You have already joined this league" }
end
