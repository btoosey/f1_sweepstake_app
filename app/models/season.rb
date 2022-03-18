class Season < ApplicationRecord
  has_many :races, dependent: :destroy
end
