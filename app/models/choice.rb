class Choice < ApplicationRecord
  belongs_to :user_league
  belongs_to :result
  belongs_to :user
end
