team_drivers_list = [
[Constructor.where(name: "Mercedes-AMG Petronas F1 Team").first, Driver.where(code: "HAM").first],
[Constructor.where(name: "Mercedes-AMG Petronas F1 Team").first, Driver.where(code: "RUS").first],
[Constructor.where(name: "Oracle Red Bull Racing").first, Driver.where(code: "VER").first],
[Constructor.where(name: "Oracle Red Bull Racing").first, Driver.where(code: "PER").first],
[Constructor.where(name: "Scuderia Ferrari").first, Driver.where(code: "LEC").first],
[Constructor.where(name: "Scuderia Ferrari").first, Driver.where(code: "SAI").first],
[Constructor.where(name: "McLaren F1 Team").first, Driver.where(code: "NOR").first],
[Constructor.where(name: "McLaren F1 Team").first, Driver.where(code: "RIC").first],
[Constructor.where(name: "BWT Alpine F1 Team").first, Driver.where(code: "OCO").first],
[Constructor.where(name: "BWT Alpine F1 Team").first, Driver.where(code: "ALO").first],
[Constructor.where(name: "Scuderia AlphaTauri").first, Driver.where(code: "GAS").first],
[Constructor.where(name: "Scuderia AlphaTauri").first, Driver.where(code: "TSU").first],
[Constructor.where(name: "Aston Martin Aramco Cognizant F1 Team").first, Driver.where(code: "STR").first],
[Constructor.where(name: "Aston Martin Aramco Cognizant F1 Team").first, Driver.where(code: "VET").first],
[Constructor.where(name: "Aston Martin Aramco Cognizant F1 Team").first, Driver.where(code: "HUL").first],
[Constructor.where(name: "Williams Racing").first, Driver.where(code: "LAT").first],
[Constructor.where(name: "Williams Racing").first, Driver.where(code: "ALB").first],
[Constructor.where(name: "Alfa Romeo F1 Team Orlen").first, Driver.where(code: "BOT").first],
[Constructor.where(name: "Alfa Romeo F1 Team Orlen").first, Driver.where(code: "ZHO").first],
[Constructor.where(name: "Haas F1 Team").first, Driver.where(code: "MAG").first],
[Constructor.where(name: "Haas F1 Team").first, Driver.where(code: "MSC").first],
]

team_drivers_list.each do |team_driver|
  TeamDriver.create(constructor: team_driver[0], driver: team_driver[1])
end
