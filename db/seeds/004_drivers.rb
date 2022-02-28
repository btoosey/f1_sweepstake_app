drivers_list = [
[44, "Lewis", "Hamilton", "HAM"],
[63, "George", "Russell", "RUS"],
[1, "Max", "Verstappen", "VER"],
[11, "Sergio", "Perez", "PER"],
[16, "Charles", "Leclerc", "LEC"],
[55, "Carlos", "Sainz", "SAI"],
[3, "Daniel", "Ricciardo", "RIC"],
[4, "Lando", "Norris", "NOR"],
[14, "Fernando", "Alonso", "ALO"],
[31, "Esteban", "Ocon", "OCO"],
[10, "Pierre", "Gasly", "GAS"],
[22, "Yuki", "Tsunoda", "TSU"],
[5, "Sebastian", "Vettel", "VET"],
[18, "Lance", "Stroll", "STR"],
[6, "Nicholas", "Latifi", "LAT"],
[23, "Alex", "Albon", "ALB"],
[24, "Guanyu", "Zhou", "ZHO"],
[77, "Valtteri", "Bottas", "BOT"],
[9, "Nikita", "Mazepin", "MAZ"],
[47, "Mick", "Schumacher", "MSC"]
]

drivers_list.each do |driver|
  Driver.create(number: driver[0], forename: driver[1],
                surname: driver[2], code: driver[3])
end
