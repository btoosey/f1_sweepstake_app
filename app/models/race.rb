class Race < ApplicationRecord
  belongs_to :season
  belongs_to :circuit
end
