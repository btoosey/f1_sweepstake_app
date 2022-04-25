races_list = [
  [Season.where(year: 2022).first, Circuit.where(name: "Bahrain International Circuit").first, 1, "Gulf Air Bahrain Grand Prix", DateTime.new(2022,3,20,15)],
  [Season.where(year: 2022).first, Circuit.where(name: "Jeddah Corniche Circuit").first, 2, "STC Saudi Arabian Grand Prix", DateTime.new(2022,3,27,17)],
  [Season.where(year: 2022).first, Circuit.where(name: "Albert Park Circuit").first, 3, "Heineken Australian Grand Prix", DateTime.new(2022,4,10,5)],
  [Season.where(year: 2022).first, Circuit.where(name: "Autodromo Enzo e Dino Ferrari").first, 4, "Rolex Gran Premio Del Made In Italy E Dell'Emilia-Romagna", DateTime.new(2022,4,24,13)]
]

races_list.each do |race|
  Race.create(season: race[0], circuit: race[1], round: race[2], name: race[3], race_date: race[4])
end
