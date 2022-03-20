race_drivers_list = [
  [Race.where(season: Season.where(year: 2022).first, name: "Formula 1 Gulf Air Bahrain Grand Prix").first, TeamDriver.where(constructor: Constructor.where(name: "Mercedes-AMG Petronas F1 Team"), driver: Driver.where(code: "HAM")).first],
  [Race.where(season: Season.where(year: 2022).first, name: "Formula 1 Gulf Air Bahrain Grand Prix").first, TeamDriver.where(constructor: Constructor.where(name: "Mercedes-AMG Petronas F1 Team"), driver: Driver.where(code: "RUS")).first],
  [Race.where(season: Season.where(year: 2022).first, name: "Formula 1 Gulf Air Bahrain Grand Prix").first, TeamDriver.where(constructor: Constructor.where(name: "Oracle Red Bull Racing"), driver: Driver.where(code: "VER")).first],
  [Race.where(season: Season.where(year: 2022).first, name: "Formula 1 Gulf Air Bahrain Grand Prix").first, TeamDriver.where(constructor: Constructor.where(name: "Oracle Red Bull Racing"), driver: Driver.where(code: "PER")).first],
  [Race.where(season: Season.where(year: 2022).first, name: "Formula 1 Gulf Air Bahrain Grand Prix").first, TeamDriver.where(constructor: Constructor.where(name: "Scuderia Ferrari"), driver: Driver.where(code: "LEC")).first],
  [Race.where(season: Season.where(year: 2022).first, name: "Formula 1 Gulf Air Bahrain Grand Prix").first, TeamDriver.where(constructor: Constructor.where(name: "Scuderia Ferrari"), driver: Driver.where(code: "SAI")).first],
  [Race.where(season: Season.where(year: 2022).first, name: "Formula 1 Gulf Air Bahrain Grand Prix").first, TeamDriver.where(constructor: Constructor.where(name: "McLaren F1 Team"), driver: Driver.where(code: "NOR")).first],
  [Race.where(season: Season.where(year: 2022).first, name: "Formula 1 Gulf Air Bahrain Grand Prix").first, TeamDriver.where(constructor: Constructor.where(name: "McLaren F1 Team"), driver: Driver.where(code: "RIC")).first],
  [Race.where(season: Season.where(year: 2022).first, name: "Formula 1 Gulf Air Bahrain Grand Prix").first, TeamDriver.where(constructor: Constructor.where(name: "BWT Alpine F1 Team"), driver: Driver.where(code: "OCO")).first],
  [Race.where(season: Season.where(year: 2022).first, name: "Formula 1 Gulf Air Bahrain Grand Prix").first, TeamDriver.where(constructor: Constructor.where(name: "BWT Alpine F1 Team"), driver: Driver.where(code: "ALO")).first],
  [Race.where(season: Season.where(year: 2022).first, name: "Formula 1 Gulf Air Bahrain Grand Prix").first, TeamDriver.where(constructor: Constructor.where(name: "Scuderia AlphaTauri"), driver: Driver.where(code: "TSU")).first],
  [Race.where(season: Season.where(year: 2022).first, name: "Formula 1 Gulf Air Bahrain Grand Prix").first, TeamDriver.where(constructor: Constructor.where(name: "Scuderia AlphaTauri"), driver: Driver.where(code: "GAS")).first],
  [Race.where(season: Season.where(year: 2022).first, name: "Formula 1 Gulf Air Bahrain Grand Prix").first, TeamDriver.where(constructor: Constructor.where(name: "Aston Martin Aramco Cognizant F1 Team"), driver: Driver.where(code: "HUL")).first],
  [Race.where(season: Season.where(year: 2022).first, name: "Formula 1 Gulf Air Bahrain Grand Prix").first, TeamDriver.where(constructor: Constructor.where(name: "Aston Martin Aramco Cognizant F1 Team"), driver: Driver.where(code: "STR")).first],
  [Race.where(season: Season.where(year: 2022).first, name: "Formula 1 Gulf Air Bahrain Grand Prix").first, TeamDriver.where(constructor: Constructor.where(name: "Williams Racing"), driver: Driver.where(code: "ALB")).first],
  [Race.where(season: Season.where(year: 2022).first, name: "Formula 1 Gulf Air Bahrain Grand Prix").first, TeamDriver.where(constructor: Constructor.where(name: "Williams Racing"), driver: Driver.where(code: "LAT")).first],
  [Race.where(season: Season.where(year: 2022).first, name: "Formula 1 Gulf Air Bahrain Grand Prix").first, TeamDriver.where(constructor: Constructor.where(name: "Alfa Romeo F1 Team Orlen"), driver: Driver.where(code: "BOT")).first],
  [Race.where(season: Season.where(year: 2022).first, name: "Formula 1 Gulf Air Bahrain Grand Prix").first, TeamDriver.where(constructor: Constructor.where(name: "Alfa Romeo F1 Team Orlen"), driver: Driver.where(code: "ZHO")).first],
  [Race.where(season: Season.where(year: 2022).first, name: "Formula 1 Gulf Air Bahrain Grand Prix").first, TeamDriver.where(constructor: Constructor.where(name: "Haas F1 Team"), driver: Driver.where(code: "MAG")).first],
  [Race.where(season: Season.where(year: 2022).first, name: "Formula 1 Gulf Air Bahrain Grand Prix").first, TeamDriver.where(constructor: Constructor.where(name: "Haas F1 Team"), driver: Driver.where(code: "MSC")).first]
]

race_drivers_list.each do |race_driver|
  RaceDriver.create(race: race_driver[0], team_driver: race_driver[1])
end
