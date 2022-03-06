class League < ApplicationRecord
  belongs_to :user
  has_many :user_leagues, dependent: :destroy
end
