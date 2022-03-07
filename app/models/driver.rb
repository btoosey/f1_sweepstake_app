class Driver < ApplicationRecord
  def full_name
    full_name = forename + " " + surname
  end
end
