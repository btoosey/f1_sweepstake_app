race_list = [
  "Formula 1 Gulf Air Bahrain Grand Prix"
]

results_list = [
  [2022, race_list[0], "LEC", 1, false, false],
  [2022, race_list[0], "SAI", 2, false, false],
  [2022, race_list[0], "HAM", 3, false, false],
  [2022, race_list[0], "RUS", 4, false, false],
  [2022, race_list[0], "MAG", 5, false, false],
  [2022, race_list[0], "BOT", 6, false, false],
  [2022, race_list[0], "OCO", 7, false, false],
  [2022, race_list[0], "TSU", 8, false, false],
  [2022, race_list[0], "ALO", 9, false, false],
  [2022, race_list[0], "ZHO", 10, false, false],
  [2022, race_list[0], "MSC", 11, false, false],
  [2022, race_list[0], "STR", 12, false, false],
  [2022, race_list[0], "ALB", 13, false, false],
  [2022, race_list[0], "RIC", 14, false, false],
  [2022, race_list[0], "NOR", 15, false, false],
  [2022, race_list[0], "LAT", 16, false, false],
  [2022, race_list[0], "HUL", 17, false, false],
  [2022, race_list[0], "PER", 18, true, false],
  [2022, race_list[0], "VER", 19, true, false],
  [2022, race_list[0], "GAS", 20, true, false],
]

results_list.each do |details|
  Result.create(race_driver: RaceDriver.where(race: Race.where(season: Season.where(year: details[0]).first, name: details[1]).first, team_driver: TeamDriver.where(driver: Driver.where(code: details[2]).first)).first, position: details[3], dnf: details[4], dsq: details[5]) do |new_result|
    new_result.position_to_points(new_result.position)
  end
end
