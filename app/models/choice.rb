class Choice < ApplicationRecord
  belongs_to :league
  belongs_to :result
  belongs_to :user
end
