constructors_list = [
  ["Alfa Romeo F1 Team Orlen"],
  ["Scuderia AlphaTauri"],
  ["BWT Alpine F1 Team"],
  ["Aston Martin Aramco Cognizant F1 Team"],
  ["Scuderia Ferrari"],
  ["Haas F1 Team"],
  ["McLaren F1 Team"],
  ["Mercedes-AMG Petronas F1 Team"],
  ["Oracle Red Bull Racing"],
  ["Williams Racing"],
]

constructors_list.each do |constructor|
  Constructor.create(name: constructor[0])
end
