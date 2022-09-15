
# Airplane create
Airplane.destroy_all

a1 = Airplane.create!(

    name: '747',
    row: '32', #this represents the LAST row
    column: 'F',#this represents the LAST column (ie. A-F)
    total_seats: 192
    

)

a2 = Airplane.create!(

    name: '737',
    row: '28', #this represents the LAST row
    column: 'E',#this represents the LAST column (ie. A-F).
    total_seats: 140

    

)

a3 = Airplane.create!(

    name: '700',
    row: '15', #this represents the LAST row
    column: 'D',#this represents the LAST column (ie. A-F)
    total_seats: 60

)

puts("I have created #{Airplane.count} planes")


###### User ######

User.destroy_all

u1 = User.create!(

    name: 'Lei',
    email: 'lei@gmail.com',
    password: 'chicken',
    admin: true

)

u2 = User.create!(

    name: 'Brendan',
    email: 'brendan@gmail.com',
    password: 'chicken',
    admin: false
)

u3 = User.create!(

    name: 'Luke',
    email: 'luke@gmail.com',
    password: 'chicken',
    admin: false

)

u4 = User.create!(

    name: 'Kris',
    email: 'kris@gmail.com',
    password: 'chicken',
    admin: false

)

u5 = User.create!(

    name: 'Shay',
    email: 'shay@gmail.com',
    password: 'chicken',
    admin: false

)

puts("I have created #{User.count} users.")

#### Flights ######

Flight.destroy_all 

f1 = Flight.create!(
    date: "2022-8-8",
    origin: 'SYD',
    destination: 'ADE',
    flight_number: "154"
)

f2 = Flight.create!(
    date: "2022-8-9",
    origin: 'LAX',
    destination: 'SYD',
    flight_number: "96"
)

f3 = Flight.create!(
    date: "2022-10-11",
    origin: 'CBR',
    destination: 'MEL',
    flight_number: "65"
)

f4 = Flight.create!(
    date: "2022-07-10",
    origin: 'ADE',
    destination: 'MEL',
    flight_number: "9"
)

f5 = Flight.create!(
    date: "2022-09-12",
    origin: 'SYD',
    destination: 'MEL',
    flight_number: "15"
)

f6 = Flight.create!(
    date: "2022-09-09",
    origin: 'SYD',
    destination: 'MEL',
    flight_number: "222"
)

f7 = Flight.create!(
    date: "2023-09-01",
    origin: 'SYD',
    destination: 'MEL',
    flight_number: "1"
)

f8 = Flight.create!(
    date: "2023-08-08",
    origin: 'MEL',
    destination: 'SYD',
    flight_number: "88"
)

f9 = Flight.create!(
    date: "2022-11-22",
    origin: 'MEL',
    destination: 'SYD',
    flight_number: "126"
)

f10 = Flight.create!(
    date: "2023-09-05",
    origin: 'CBR',
    destination: 'MEL',
    flight_number: "168"
)

f11 = Flight.create!(
    date: "2023-04-15",
    origin: 'ADE',
    destination: 'MEL',
    flight_number: "54"
)

puts("I have created #{Flight.count} flights.")

####FLIGHTS ASSOCIATIONS  AIRPLANES --< > FLIGHTS######

a1.flights << f1 << f2 << f6 << f11
a2.flights << f3 << f4 << f7 << f9
a3.flights << f5 << f8 << f10

puts ('I have connected FLIGHTS with AIRPLANES.')
puts"The AIRPLANE '#{a2.name}' contains the flights: #{a2.flights.pluck(:flight_number).join(', ')}."

##### RESERVATION ######

Reservation.destroy_all

r1 = Reservation.create!(
    row: 'A',
    column: '12'

)

r2 = Reservation.create!(
    row: 'D',
    column: '18'
    
)

r3 = Reservation.create!(
    row: 'B',
    column: '7'
    
)

r4 = Reservation.create!(
    row: 'A',
    column: '11'
    
)

r5 = Reservation.create!(
    row: 'E',
    column: '25'
    
)

puts ("I have created #{Reservation.count} reservations")

######RESERVATION ASSOCIATIONS #######

puts('Making associations between user --< >---reservations')

u2.reservations << r1 << r2
u3.reservations << r3
u4.reservations << r4
u5.reservations << r5
puts"The USER '#{u2.name}' contains the reservations: #{u2.reservations.pluck(:row).join(', ')}."

puts('Making associations between reservation --< >---flights')

f1.reservations << r1 
f2.reservations << r2
f3.reservations << r3 << r4 
f4.reservations << r5

puts"The FLIGHT '#{f3.flight_number}' contains the reservations in rows: #{f3.reservations.pluck(:row).join(', ')}."

