race_list = [
  "Formula 1 Gulf Air Bahrain Grand Prix"
]

race_drivers_list = [
  [2022, race_list[0], "Mercedes-AMG Petronas F1 Team", "HAM"],
  [2022, race_list[0], "Mercedes-AMG Petronas F1 Team", "RUS"],
  [2022, race_list[0], "Oracle Red Bull Racing", "VER"],
  [2022, race_list[0], "Oracle Red Bull Racing", "PER"],
  [2022, race_list[0], "Scuderia Ferrari", "LEC"],
  [2022, race_list[0], "Scuderia Ferrari", "SAI"],
  [2022, race_list[0], "McLaren F1 Team", "NOR"],
  [2022, race_list[0], "McLaren F1 Team", "RIC"],
  [2022, race_list[0], "BWT Alpine F1 Team", "OCO"],
  [2022, race_list[0], "BWT Alpine F1 Team", "ALO"],
  [2022, race_list[0], "Scuderia AlphaTauri", "GAS"],
  [2022, race_list[0], "Scuderia AlphaTauri", "TSU"],
  [2022, race_list[0], "Aston Martin Aramco Cognizant F1 Team", "STR"],
  [2022, race_list[0], "Aston Martin Aramco Cognizant F1 Team", "HUL"],
  [2022, race_list[0], "Williams Racing", "ALB"],
  [2022, race_list[0], "Williams Racing", "LAT"],
  [2022, race_list[0], "Alfa Romeo F1 Team Orlen", "BOT"],
  [2022, race_list[0], "Alfa Romeo F1 Team Orlen", "ZHO"],
  [2022, race_list[0], "Haas F1 Team", "MAG"],
  [2022, race_list[0], "Haas F1 Team", "MSC"]
  [2022, race_list[1], "Mercedes-AMG Petronas F1 Team", "HAM"],
  [2022, race_list[1], "Mercedes-AMG Petronas F1 Team", "RUS"],
  [2022, race_list[1], "Oracle Red Bull Racing", "VER"],
  [2022, race_list[1], "Oracle Red Bull Racing", "PER"],
  [2022, race_list[1], "Scuderia Ferrari", "LEC"],
  [2022, race_list[1], "Scuderia Ferrari", "SAI"],
  [2022, race_list[1], "McLaren F1 Team", "NOR"],
  [2022, race_list[1], "McLaren F1 Team", "RIC"],
  [2022, race_list[1], "BWT Alpine F1 Team", "OCO"],
  [2022, race_list[1], "BWT Alpine F1 Team", "ALO"],
  [2022, race_list[1], "Scuderia AlphaTauri", "GAS"],
  [2022, race_list[1], "Scuderia AlphaTauri", "TSU"],
  [2022, race_list[1], "Aston Martin Aramco Cognizant F1 Team", "STR"],
  [2022, race_list[1], "Aston Martin Aramco Cognizant F1 Team", "HUL"],
  [2022, race_list[1], "Williams Racing", "ALB"],
  [2022, race_list[1], "Williams Racing", "LAT"],
  [2022, race_list[1], "Alfa Romeo F1 Team Orlen", "BOT"],
  [2022, race_list[1], "Alfa Romeo F1 Team Orlen", "ZHO"],
  [2022, race_list[1], "Haas F1 Team", "MAG"],
  [2022, race_list[1], "Haas F1 Team", "MSC"]
]

race_drivers_list.each do |details|
  RaceDriver.create(race: Race.where(season: Season.where(year: details[0]).first, name: details[1]).first, team_driver: TeamDriver.where(constructor: Constructor.where(name: details[2]), driver: Driver.where(code: details[3])).first)
end
