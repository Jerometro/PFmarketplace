# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
  Booking.destroy_all
  Laptop.destroy_all
  User.destroy_all

bertrand = User.create!({
  first_name: 'Bertrand',
  last_name: 'Poisson',
  email: 'bertrand@poisson.com',
  password: '12345678'
})

serge = User.create!({
  first_name: 'Serge',
  last_name: 'Lama',
  email: 'serge@lama.com',
  password: '12345678'
})

paul = User.create!({
  first_name: 'Paul',
  last_name: 'Hamster',
  email: 'paul@hamster.com',
  password: '12345678'
})

marine = User.create!({
  first_name: 'Marine',
  last_name: 'Lapin',
  email: 'marine@lapin.com',
  password: '12345678'
})

mac_de_serge = Laptop.create!({
  name: 'Macbook Pro - 13 pouces',
  description: 'Very good machine. Grey. Intel Core i7 16 Go RAM 512 Go SSD',
  address: '17 avenue de la République 35000 Rennes',
  price_per_day: 150,
  user: serge
})

lenovo_de_serge = Laptop.create!({
  name: 'Lenovo - 15 pouces',
  description: 'Super fast laptop. Intel Core i7 16 Go RAM 512 Go SSD',
  address: '17 avenue de la République 35000 Rennes',
  price_per_day: 150,
  user: serge
})

msi_de_serge = Laptop.create!({
  name: 'MSI - 15 pouces',
  description: 'Ideal for gaming. Intel Core i7 16 Go RAM 512 Go SSD',
  address: '17 avenue de la République 35000 Rennes',
  price_per_day: 150,
  user: serge
})

lenovo_de_paul = Laptop.create!({
  name: 'Lenovo - 13 pouces',
  description: 'Black color, a bit used. Intel Core i7 16 Go RAM 512 Go SSD',
  address: '30 avenue Charles de Gaulle 35000 Rennes',
  price_per_day: 50,
  user: paul
})

mac_de_paul = Laptop.create!({
  name: 'MacBook Air - 13 pouces',
  description: 'Spacegrey, brand new. Intel Core i7 16 Go RAM 512 Go SSD',
  address: '30 avenue Charles de Gaulle 35000 Rennes',
  price_per_day: 100,
  user: paul
})

msi_de_paul = Laptop.create!({
  name: 'MSI - 18 pouces',
  description: 'Ideal for designers. Intel Core i7 16 Go RAM 512 Go SSD',
  address: '17 avenue de la République 35000 Rennes',
  price_per_day: 70,
  user: paul
})

mac_de_marine = Laptop.create!({
  name: 'MacBook Pro - 15 pouces',
  description: 'Ideal for web development. Intel Core i7 16 Go RAM 512 Go SSD',
  address: '24 rue du Bois 35000 Rennes',
  price_per_day: 100,
  user: marine
})

asus_de_marine = Laptop.create!({
  name: 'Asus',
  description: 'PC Ultra-Portable. Intel Core i7 16 Go RAM 512 Go SSD',
  address: '24 rue du Bois 35000 Rennes',
  price_per_day: 30,
  user: marine
})

acer_de_marine = Laptop.create!({
  name: 'Acer',
  description: 'A bit old but very handy. Intel Core i7 16 Go RAM 512 Go SSD',
  address: '24 rue du Bois 35000 Rennes',
  price_per_day: 20,
  user: marine
})

mac_de_bertrand = Laptop.create!({
  name: 'MacBook Air - 15 pouces',
  description: 'Light and easy to carry. Intel Core i7 16 Go RAM 512 Go SSD',
  address: '30 rue de La Plaine 35000 Rennes',
  price_per_day: 80,
  user: bertrand
})

acer_de_bertrand = Laptop.create!({
  name: 'Acer Aspire',
  description: 'Recommended to work. Intel Core i7 16 Go RAM 512 Go SSD',
  address: '30 rue de La Plaine 35000 Rennes',
  price_per_day: 50,
  user: bertrand
})

huawai_de_bertrand = Laptop.create!({
  name: 'Huawai',
  description: 'Touch-screen. Intel Core i7 16 Go RAM 512 Go SSD',
  address: '30 rue de La Plaine 35000 Rennes',
  price_per_day: 110,
  user: bertrand
})

