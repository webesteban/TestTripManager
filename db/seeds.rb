# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create(name: 'Admin', email: 'admin@trip.com', password: 'qwer1234', password_confirmation: 'qwer1234', enabled: true)

vehicle_list = [
  [ "ABC123", "Black", 2016 ],
  [ "ABC234", "Yellow", 2016  ],
  [ "ABC001", "Green", 2016  ],
  [ "DFG555", "Blue", 2016  ],
  [ "DFG111", "White", 2016  ],
  [ "DFG322", "Black", 2016  ],
  [ "DFG225", "Red", 2016  ],
  [ "ABC885", "Black", 2016  ]
]

vehicle_list.each do |plate, color, year|
  Vehicle.create(plate: plate, color: color, year: year)
end

passenger_list = [
  [ "Esteban", "Hurtado", "1128441680" ],
  [ "Jeremias", "Ortiz", "112312312" ],
  [ "Ana", "Alvarez", "342343345" ],
  [ "Manuela", "Agudelo", "345345334" ],
  [ "Andry", "Shevchenko", "345345345" ],
  [ "Antonia", "Lopez", "34534534" ]
]

passenger_list.each do |first_name, last_name, identification|
  Passenger.create(first_name: first_name, last_name: last_name, identification: identification)
end

20.times do 
  v = Vehicle.order("RANDOM()").first
  p = Passenger.order("RANDOM()").first
  Travel.create(passenger: p, vehicle:v )
end
