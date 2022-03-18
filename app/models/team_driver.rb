class TeamDriver < ApplicationRecord
  belongs_to :constructor
  belongs_to :driver
  has_many :race_drivers

  def to_label
    "#{driver.full_name} - #{constructor.name}"
  end
end
