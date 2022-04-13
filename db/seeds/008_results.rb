race_list = [
  "Gulf Air Bahrain Grand Prix",
  "Jeddah Corniche Circuit",
  "Albert Park Circuit"
]

results_list = [
  [2022, race_list[0], "LEC", 1, false, false, false],
  [2022, race_list[0], "SAI", 2, false, false, false],
  [2022, race_list[0], "HAM", 3, false, false, false],
  [2022, race_list[0], "RUS", 4, false, false, false],
  [2022, race_list[0], "MAG", 5, false, false, false],
  [2022, race_list[0], "BOT", 6, false, false, false],
  [2022, race_list[0], "OCO", 7, false, false, false],
  [2022, race_list[0], "TSU", 8, false, false, false],
  [2022, race_list[0], "ALO", 9, false, false, false],
  [2022, race_list[0], "ZHO", 10, false, false, false],
  [2022, race_list[0], "MSC", 11, false, false, false],
  [2022, race_list[0], "STR", 12, false, false, false],
  [2022, race_list[0], "ALB", 13, false, false, false],
  [2022, race_list[0], "RIC", 14, false, false, false],
  [2022, race_list[0], "NOR", 15, false, false, false],
  [2022, race_list[0], "LAT", 16, false, false, false],
  [2022, race_list[0], "HUL", 17, false, false, false],
  [2022, race_list[0], "PER", 18, true, false, false],
  [2022, race_list[0], "VER", 19, true, false, false],
  [2022, race_list[0], "GAS", 20, true, false, false],

  [2022, race_list[1], "VER", 1, false, false, false],
  [2022, race_list[1], "LEC", 2, false, false, false],
  [2022, race_list[1], "SAI", 3, false, false, false],
  [2022, race_list[1], "PER", 4, false, false, false],
  [2022, race_list[1], "RUS", 5, false, false, false],
  [2022, race_list[1], "OCO", 6, false, false, false],
  [2022, race_list[1], "NOR", 7, false, false, false],
  [2022, race_list[1], "GAS", 8, false, false, false],
  [2022, race_list[1], "MAG", 9, false, false, false],
  [2022, race_list[1], "HAM", 10, false, false, false],
  [2022, race_list[1], "ZHO", 11, false, false, false],
  [2022, race_list[1], "HUL", 12, false, false, false],
  [2022, race_list[1], "STR", 13, false, false, false],
  [2022, race_list[1], "ALB", 14, true, false, false],
  [2022, race_list[1], "BOT", 15, true, false, false],
  [2022, race_list[1], "ALO", 16, true, false, false],
  [2022, race_list[1], "RIC", 17, true, false, false],
  [2022, race_list[1], "LAT", 18, true, false, false],
  [2022, race_list[1], "TSU", 19, false, false, true],
  [2022, race_list[1], "MSC", 20, false, false, true],

  [2022, race_list[2], "LEC", 1, false, false, false],
  [2022, race_list[2], "PER", 2, false, false, false],
  [2022, race_list[2], "RUS", 3, false, false, false],
  [2022, race_list[2], "HAM", 4, false, false, false],
  [2022, race_list[2], "NOR", 5, false, false, false],
  [2022, race_list[2], "RIC", 6, false, false, false],
  [2022, race_list[2], "OCO", 7, false, false, false],
  [2022, race_list[2], "BOT", 8, false, false, false],
  [2022, race_list[2], "GAS", 9, false, false, false],
  [2022, race_list[2], "ALB", 10, false, false, false],
  [2022, race_list[2], "ZHO", 11, false, false, false],
  [2022, race_list[2], "STR", 12, false, false, false],
  [2022, race_list[2], "MSC", 13, false, false, false],
  [2022, race_list[2], "MAG", 14, false, false, false],
  [2022, race_list[2], "TSU", 15, false, false, false],
  [2022, race_list[2], "LAT", 16, false, false, false],
  [2022, race_list[2], "ALO", 17, false, false, false],
  [2022, race_list[2], "VER", 18, true, false, false],
  [2022, race_list[2], "VET", 19, true, false, false],
  [2022, race_list[2], "SAI", 20, true, false, false]
]

results_list.each do |details|
  Result.create(race_driver: RaceDriver.where(race: Race.where(season: Season.where(year: details[0]).first, name: details[1]).first, team_driver: TeamDriver.where(driver: Driver.where(code: details[2]).first)).first, position: details[3], dnf: details[4], dsq: details[5], dns: details[6]) do |new_result|
    new_result.position_to_points(new_result.position)
  end
end
