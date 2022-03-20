races_list = [
[Season.where(year: 2022).first, Circuit.where(name: "Bahrain International Circuit").first, 1, "Formula 1 Gulf Air Bahrain Grand Prix", Date.new(2022,3,20)]
]

races_list.each do |race|
  Race.create(season: race[0], circuit: race[1], round: race[2], name: race[3], race_date: race[4])
end
