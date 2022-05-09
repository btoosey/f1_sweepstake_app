races_list = [
  [Season.where(year: 2022).first, Circuit.where(name: "Bahrain International Circuit").first, 1, "Gulf Air Bahrain Grand Prix", DateTime.new(2022,3,20,15)],
  [Season.where(year: 2022).first, Circuit.where(name: "Jeddah Corniche Circuit").first, 2, "STC Saudi Arabian Grand Prix", DateTime.new(2022,3,27,17)],
  [Season.where(year: 2022).first, Circuit.where(name: "Albert Park Circuit").first, 3, "Heineken Australian Grand Prix", DateTime.new(2022,4,10,5)],
  [Season.where(year: 2022).first, Circuit.where(name: "Autodromo Enzo e Dino Ferrari").first, 4, "Rolex Gran Premio Del Made In Italy E Dell'Emilia-Romagna", DateTime.new(2022,4,24,13)],
  [Season.where(year: 2022).first, Circuit.where(name: "Miami International Autodrome").first, 5, "Crypto.com Miami Grand Prix", DateTime.new(2022,5,8,19.5)],
  [Season.where(year: 2022).first, Circuit.where(name: "Circuit de Barcelona-Catalunya").first, 6, "Pirelli Gran Premio De España", DateTime.new(2022,5,22,13)],
  [Season.where(year: 2022).first, Circuit.where(name: "Circuit de Monaco").first, 7, "Grand Prix De Monaco", DateTime.new(2022,5,29,13)],
  [Season.where(year: 2022).first, Circuit.where(name: "Baku City Circuit").first, 8, "Azerbaijan Grand Prix", DateTime.new(2022,6,12,11)],
  [Season.where(year: 2022).first, Circuit.where(name: "Cricuit Gilles-Villeneuve").first, 9, "Grand Prix Du Canada", DateTime.new(2022,6,19,18)],
  [Season.where(year: 2022).first, Circuit.where(name: "Silverstone Circuit").first, 10, "Lenovo British Grand Prix", DateTime.new(2022,7,3,14)],
  [Season.where(year: 2022).first, Circuit.where(name: "Red Bull Ring").first, 11, "Grosser Preis Von Österreich", DateTime.new(2022,7,10,13)],
  [Season.where(year: 2022).first, Circuit.where(name: "Circuit Paul Ricard").first, 12, "Lenovo Grand Prix De France", DateTime.new(2022,7,24,13)],
  [Season.where(year: 2022).first, Circuit.where(name: "Hungaroring").first, 13, "Aramco Magyar Nagydíj", DateTime.new(2022,7,31,13)],
  [Season.where(year: 2022).first, Circuit.where(name: "Circuit De Spa-Francorchamps").first, 14, "Rolex Belgian Grand Prix", DateTime.new(2022,8,28,13)],
  [Season.where(year: 2022).first, Circuit.where(name: "Circuit Zandvoort").first, 15, "Heineken Dutch Grand Prix", DateTime.new(2022,9,4,13)],
  [Season.where(year: 2022).first, Circuit.where(name: "Autodromo Nazionale Monza").first, 16, "Pirelli Gran Premio D’Italia", DateTime.new(2022,9,11,13)],
  [Season.where(year: 2022).first, Circuit.where(name: "Marina Bay Street Circuit").first, 17, "Singapore Grand Prix", DateTime.new(2022,10,2,12)],
  [Season.where(year: 2022).first, Circuit.where(name: "Suzuka International Racing Course").first, 18, "Japanese Grand Prix", DateTime.new(2022,10,9,5)],
  [Season.where(year: 2022).first, Circuit.where(name: "Circuit Of The Americas").first, 19, "Aramco United States Grand Prix", DateTime.new(2022,10,23,19)],
  [Season.where(year: 2022).first, Circuit.where(name: "Autódromo Hermanos Rodríguez").first, 20, "Gran Premio De La Ciudad De México", DateTime.new(2022,10,30,19)],
  [Season.where(year: 2022).first, Circuit.where(name: "Autódromo José Carlos Pace").first, 21, "Heineken Grande Prêmio De São Paulo", DateTime.new(2022,11,13,18)],
  [Season.where(year: 2022).first, Circuit.where(name: "Yas Marina Circuit").first, 22, "Etihad Airways Abu Dhabi Grand Prix", DateTime.new(2022,11,20,13)]
]

races_list.each do |race|
  Race.create(season: race[0], circuit: race[1], round: race[2], name: race[3], race_date: race[4])
end
