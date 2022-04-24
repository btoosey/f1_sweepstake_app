circuits_list = [
  ["Bahrain International Circuit", "Sakhir", "Bahrain"],
  ["Jeddah Corniche Circuit", "Jeddah", "Saudi Arabia"],
  ["Albert Park Circuit", "Melbourne", "Australia"],
  ["Autodromo Enzo e Dino Ferrari", "Imola", "Italy"],
  ["Miami International Autodrome", "Miami Gardens", "United States"],
  ["Circuit de Barcelona-Catalunya", "Montmeló", "Spain"],
  ["Circuit de Monaco", "Monte Carlo", "Monaco"],
  ["Baku City Circuit", "Baku", "Azerbaijan"],
  ["Circuit Gilles Villeneuve", "Montréal", "Canada"],
  ["Silverstone Circuit", "Silverstone", "Great Britain"],
  ["Red Bull Ring", "Spielberg", "Austria"],
  ["Circuit Paul Ricard", "Le Castellet", "France"],
  ["Hungaroring", "Mogyoród", "Hungary"],
  ["Circuit de Spa-Francorchamps", "Stavelot", "Belgium"],
  ["Circuit Zandvoort", "Zandvoort", "Netherlands"],
  ["Monza Circuit", "Monza", "Italy"],
  ["Istanbul Park", "Istanbul", "Turkey"],
  ["Marina Bay Street Circuit", "Singapore", "Singapore"],
  ["Suzuka International Racing Course", "Suzuka", "Japan"],
  ["Circuit of the Americas", "Austin", "United States"],
  ["Autódromo Hermanos Rodríguez", "Mexico City", "Mexico"],
  ["Interlagos Circuit", "São Paulo", "Brazil"],
  ["Yas Marina Circuit", "Abu Dhabi", "United Arab Emirates"]
]

circuits_list.each do |circuit|
  Circuit.create(name: circuit[0], location: circuit[1], country: circuit[2])
end
