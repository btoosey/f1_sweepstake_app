class UserLeague < ApplicationRecord
  belongs_to :user
  belongs_to :league

  has_many :choices, dependent: :destroy

  validates :league, presence: true, uniqueness: { scope: :user, message: "You have already joined this league" }
  accepts_nested_attributes_for :choices
end
