
# Airplane create
Airplane.destroy_all

a1 = Airplane.create!(

    name: '747',
    row: '32', #this represents the LAST row
    column: 'F'#this represents the LAST column (ie. A-F)
    

)

a2 = Airplane.create!(

    name: '737',
    row: '28', #this represents the LAST row
    column: 'E'#this represents the LAST column (ie. A-F)
    

)

a3 = Airplane.create!(

    name: '700',
    row: '15', #this represents the LAST row
    column: 'D'#this represents the LAST column (ie. A-F)
    

)

puts("I have created #{Airplane.count} planes")


###### User ######

User.destroy_all

u1 = User.create!(

    name: 'Lei',
    admin: true

)

u2 = User.create!(

    name: 'Brendan',
    admin: false
)

u3 = User.create!(

    name: 'Luke',
    admin: false

)

u4 = User.create!(

    name: 'Kris',
    admin: false

)

u5 = User.create!(

    name: 'Shay',
    admin: false

)

puts("I have created #{User.count} users.")

#### Flights ######

Flight.destroy_all 

f1 = Flight.create!(
    date: "2022-8-8",
    origin: 'SYD',
    destination: 'ADE',
    flight_number: 154
)

f2 = Flight.create!(
    date: "2022-8-9",
    origin: 'LAX',
    destination: 'SYD',
    flight_number: 96
)

f3 = Flight.create!(
    date: "2022-10-11",
    origin: 'CBR',
    destination: 'MEL',
    flight_number: 65
)

f3 = Flight.create!(
    date: "2022-07-10",
    origin: 'ADE',
    destination: 'MEL',
    flight_number: 9
)

f3 = Flight.create!(
    date: "2022-09-12",
    origin: 'SYD',
    destination: 'MEL',
    flight_number: 15
)

puts("I have created #{Flight.count} flights.")

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