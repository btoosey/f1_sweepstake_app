class Result < ApplicationRecord
  belongs_to :race_driver

  def position_to_points(position)
    case position
    when 1
      self.points = 25
    when 2
      self.points = 18
    when 3
      self.points = 15
    when 4
      self.points = 12
    when 5
      self.points = 10
    when 6
      self.points = 8
    when 7
      self.points = 6
    when 8
      self.points = 4
    when 9
      self.points = 2
    when 10
      self.points = 1
    else
      self.points = 0
    end
  end
end
