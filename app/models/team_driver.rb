class TeamDriver < ApplicationRecord
  belongs_to :constructor
  belongs_to :driver

  def to_label
    "#{driver.full_name} - #{constructor.name}"
  end
end
