class UserLeague < ApplicationRecord
  belongs_to :user
  belongs_to :league

  has_many :choices, dependent: :destroy

  validates :league, presence: true, uniqueness: { scope: :user, message: "You have already joined this league" }
  accepts_nested_attributes_for :choices

  def calculate_points
    points = 0
    choices = Choice.where(user_league: self)
    choices.each do |choice|
      unless Result.where(race_driver: choice.race_driver).empty?
        points += Result.where(race_driver: choice.race_driver).first.points
      end
    end
    points
  end
end
