results_list = [
  [RaceDriver.where(race: Race.where(season: Season.where(year: 2022).first, name: "Formula 1 Gulf Air Bahrain Grand Prix").first, team_driver: TeamDriver.where(driver: Driver.where(code: "LEC").first)).first, 1, false, false],
  [RaceDriver.where(race: Race.where(season: Season.where(year: 2022).first, name: "Formula 1 Gulf Air Bahrain Grand Prix").first, team_driver: TeamDriver.where(driver: Driver.where(code: "SAI").first)).first, 2, false, false],
  [RaceDriver.where(race: Race.where(season: Season.where(year: 2022).first, name: "Formula 1 Gulf Air Bahrain Grand Prix").first, team_driver: TeamDriver.where(driver: Driver.where(code: "HAM").first)).first, 3, false, false],
  [RaceDriver.where(race: Race.where(season: Season.where(year: 2022).first, name: "Formula 1 Gulf Air Bahrain Grand Prix").first, team_driver: TeamDriver.where(driver: Driver.where(code: "RUS").first)).first, 4, false, false],
  [RaceDriver.where(race: Race.where(season: Season.where(year: 2022).first, name: "Formula 1 Gulf Air Bahrain Grand Prix").first, team_driver: TeamDriver.where(driver: Driver.where(code: "MAG").first)).first, 5, false, false],
  [RaceDriver.where(race: Race.where(season: Season.where(year: 2022).first, name: "Formula 1 Gulf Air Bahrain Grand Prix").first, team_driver: TeamDriver.where(driver: Driver.where(code: "BOT").first)).first, 6, false, false],
  [RaceDriver.where(race: Race.where(season: Season.where(year: 2022).first, name: "Formula 1 Gulf Air Bahrain Grand Prix").first, team_driver: TeamDriver.where(driver: Driver.where(code: "OCO").first)).first, 7, false, false],
  [RaceDriver.where(race: Race.where(season: Season.where(year: 2022).first, name: "Formula 1 Gulf Air Bahrain Grand Prix").first, team_driver: TeamDriver.where(driver: Driver.where(code: "TSU").first)).first, 8, false, false],
  [RaceDriver.where(race: Race.where(season: Season.where(year: 2022).first, name: "Formula 1 Gulf Air Bahrain Grand Prix").first, team_driver: TeamDriver.where(driver: Driver.where(code: "ALO").first)).first, 9, false, false],
  [RaceDriver.where(race: Race.where(season: Season.where(year: 2022).first, name: "Formula 1 Gulf Air Bahrain Grand Prix").first, team_driver: TeamDriver.where(driver: Driver.where(code: "ZHO").first)).first, 10, false, false],
  [RaceDriver.where(race: Race.where(season: Season.where(year: 2022).first, name: "Formula 1 Gulf Air Bahrain Grand Prix").first, team_driver: TeamDriver.where(driver: Driver.where(code: "MSC").first)).first, 11, false, false],
  [RaceDriver.where(race: Race.where(season: Season.where(year: 2022).first, name: "Formula 1 Gulf Air Bahrain Grand Prix").first, team_driver: TeamDriver.where(driver: Driver.where(code: "STR").first)).first, 12, false, false],
  [RaceDriver.where(race: Race.where(season: Season.where(year: 2022).first, name: "Formula 1 Gulf Air Bahrain Grand Prix").first, team_driver: TeamDriver.where(driver: Driver.where(code: "ALB").first)).first, 13, false, false],
  [RaceDriver.where(race: Race.where(season: Season.where(year: 2022).first, name: "Formula 1 Gulf Air Bahrain Grand Prix").first, team_driver: TeamDriver.where(driver: Driver.where(code: "RIC").first)).first, 14, false, false],
  [RaceDriver.where(race: Race.where(season: Season.where(year: 2022).first, name: "Formula 1 Gulf Air Bahrain Grand Prix").first, team_driver: TeamDriver.where(driver: Driver.where(code: "NOR").first)).first, 15, false, false],
  [RaceDriver.where(race: Race.where(season: Season.where(year: 2022).first, name: "Formula 1 Gulf Air Bahrain Grand Prix").first, team_driver: TeamDriver.where(driver: Driver.where(code: "LAT").first)).first, 16, false, false],
  [RaceDriver.where(race: Race.where(season: Season.where(year: 2022).first, name: "Formula 1 Gulf Air Bahrain Grand Prix").first, team_driver: TeamDriver.where(driver: Driver.where(code: "HUL").first)).first, 17, false, false],
  [RaceDriver.where(race: Race.where(season: Season.where(year: 2022).first, name: "Formula 1 Gulf Air Bahrain Grand Prix").first, team_driver: TeamDriver.where(driver: Driver.where(code: "PER").first)).first, 18, true, false],
  [RaceDriver.where(race: Race.where(season: Season.where(year: 2022).first, name: "Formula 1 Gulf Air Bahrain Grand Prix").first, team_driver: TeamDriver.where(driver: Driver.where(code: "VER").first)).first, 19, true, false],
  [RaceDriver.where(race: Race.where(season: Season.where(year: 2022).first, name: "Formula 1 Gulf Air Bahrain Grand Prix").first, team_driver: TeamDriver.where(driver: Driver.where(code: "GAS").first)).first, 20, true, false]
]

results_list.each do |result|
  Result.create(race_driver: result[0], position: result[1], dnf: result[2], dsq: result[3]) do |new_result|
    new_result.position_to_points(new_result.position)
  end
end
