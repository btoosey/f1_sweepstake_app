class Race < ApplicationRecord
  belongs_to :season
  belongs_to :circuit

  has_many :race_drivers

  def to_label
    "#{season.year} - #{name}"
  end
end
