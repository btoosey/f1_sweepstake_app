seasons_list = ["2022"]

seasons_list.each do |season|
  Season.create(year: season)
end
