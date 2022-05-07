class Season < ApplicationRecord
  has_many :races, dependent: :destroy
  has_many :leagues, dependent: :destroy
end
