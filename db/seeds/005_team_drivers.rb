team_driver_list = [
  ["Mercedes-AMG Petronas F1 Team", "HAM"],
  ["Mercedes-AMG Petronas F1 Team", "RUS"],
  ["Oracle Red Bull Racing", "VER"],
  ["Oracle Red Bull Racing", "PER"],
  ["Scuderia Ferrari", "LEC"],
  ["Scuderia Ferrari", "SAI"],
  ["McLaren F1 Team", "NOR"],
  ["McLaren F1 Team", "RIC"],
  ["BWT Alpine F1 Team", "OCO"],
  ["BWT Alpine F1 Team", "ALO"],
  ["Scuderia AlphaTauri", "GAS"],
  ["Scuderia AlphaTauri", "TSU"],
  ["Aston Martin Aramco Cognizant F1 Team", "STR"],
  ["Aston Martin Aramco Cognizant F1 Team", "VET"],
  ["Aston Martin Aramco Cognizant F1 Team", "HUL"],
  ["Williams Racing", "ALB"],
  ["Williams Racing", "LAT"],
  ["Alfa Romeo F1 Team Orlen", "BOT"],
  ["Alfa Romeo F1 Team Orlen", "ZHO"],
  ["Haas F1 Team", "MAG"],
  ["Haas F1 Team", "MSC"]
]

team_driver_list.each do |combination|
  TeamDriver.create(constructor: Constructor.where(name: combination[0]).first, driver: Driver.where(code: combination[1]).first)
end
