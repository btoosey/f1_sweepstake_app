races_list = [
  [Season.where(year: 2022).first, Circuit.where(name: "Bahrain International Circuit").first, 1, "Gulf Air Bahrain Grand Prix", Date.new(2022,3,20)],
  [Season.where(year: 2022).first, Circuit.where(name: "Jeddah Corniche Circuit").first, 2, "STC Saudi Arabian Grand Prix", Date.new(2022,3,27)]
  [Season.where(year: 2022).first, Circuit.where(name: "Albert Park Circuit").first, 3, "Heineken Australian Grand Prix", Date.new(2022,4,10)]
]

races_list.each do |race|
  Race.create(season: race[0], circuit: race[1], round: race[2], name: race[3], race_date: race[4])
end
