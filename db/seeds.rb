# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
bertrand = User.create!({
  first_name: 'Bertrand',
  last_name: 'Cantat',
  email: 'bertrand@cantat.com',
  password: '12345678'
})

serge = User.create!({
  first_name: 'Serge',
  last_name: 'Lama',
  email: 'serge@lama.com',
  password: '12345678'
})

mac_de_serge = Laptop.create!({
  name: 'Macbook Pro',
  description: 'Very good machine. Grey and shit',
  address: '17 avenue de la République 35000 Rennes',
  price_per_day: 150,
  user: serge
})

booking = Booking.create!({
  user: bertrand,
  laptop: mac_de_serge,
  start_date: DateTime.now,
  end_date: DateTime.now + 2.days,
  price: 450,
  status: 'pending'
})

booking = Booking.create!({
  user: bertrand,
  laptop: mac_de_serge,
  start_date: 10.days.ago,
  end_date: 7.days.ago,
  price: 450,
  status: 'denied'
})

booking = Booking.create!({
  user: bertrand,
  laptop: mac_de_serge,
  start_date: 5.days.ago,
  end_date: 2.days.ago,
  price: 450,
  status: 'accepted'
})
