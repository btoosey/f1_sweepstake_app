class Result < ApplicationRecord
  belongs_to :race
  belongs_to :constructor
  belongs_to :driver
end
