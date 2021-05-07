require 'open-uri'
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


file1 = URI.open("https://images.pexels.com/photos/69432/pexels-photo-69432.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940")
file2 = URI.open("https://images.pexels.com/photos/4348404/pexels-photo-4348404.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940")
file3 = URI.open("https://images.pexels.com/photos/7091926/pexels-photo-7091926.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940")
file4 = URI.open("https://images.pexels.com/photos/4348404/pexels-photo-4348404.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940")
file5 = URI.open("https://images.pexels.com/photos/6696871/pexels-photo-6696871.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940")
file6 = URI.open("https://images.pexels.com/photos/6696863/pexels-photo-6696863.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940")
file7 = URI.open("https://images.pexels.com/photos/434346/pexels-photo-434346.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940")
file8 = URI.open("https://images.pexels.com/photos/169484/pexels-photo-169484.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940")
file9 = URI.open("https://images.pexels.com/photos/1029757/pexels-photo-1029757.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940")
file10 = URI.open("https://images.pexels.com/photos/38568/apple-imac-ipad-workplace-38568.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940")
file11 = URI.open("https://images.pexels.com/photos/4620862/pexels-photo-4620862.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940")
file12 = URI.open("https://images.pexels.com/photos/6598/coffee-desk-laptop-notebook.jpg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940")

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

mac_de_serge = Laptop.new({
  name: 'Apple MacBook Pro 13 pouces Retina',
  description: 'Very good machine. Grey. Core i7 3,1 GHz - SSD 512 Go - 16 Go AZERTY - Français',
  address: '17 avenue de la République 35000 Rennes',
  price_per_day: 150,
  user: serge
})
mac_de_serge.photo.attach(io: file1, filename: 'mac.jpeg', content_type: 'images/jpeg')
mac_de_serge.save!

lenovo_de_serge = Laptop.new({
  name: 'Lenovo - 15,6 pouces',
  description: 'Super fast laptop. Processeur Intel® Core™ i5-1035G1 10e génération',
  address: '17 avenue de la République 35000 Rennes',
  price_per_day: 150,
  user: serge
})
lenovo_de_serge.photo.attach(io: file2, filename: 'leno.jpeg', content_type: 'images/jpeg')
lenovo_de_serge.save!

msi_de_serge = Laptop.new({
  name: 'MSI - 15,6 pouces',
  description: 'Ideal for gaming. Intel Core i7-9750H 12 Mo 2.6 GHz',
  address: '17 avenue de la République 35000 Rennes',
  price_per_day: 150,
  user: serge
})
msi_de_serge.photo.attach(io: file3, filename: 'msi.jpeg', content_type: 'images/jpeg')
msi_de_serge.save!

lenovo_de_paul = Laptop.new({
  name: 'Lenovo - 13 pouces',
  description: 'Black color, a bit used. Processeur Intel® Core™ i5-1035G1 10e génération',
  address: '30 avenue Charles de Gaulle 35000 Rennes',
  price_per_day: 50,
  user: paul
})
lenovo_de_paul.photo.attach(io: file4, filename: 'lenovo.jpeg', content_type: 'images/jpeg')
lenovo_de_paul.save!

mac_de_paul = Laptop.new({
  name: 'Apple MacBook Air - 13 pouces',
  description: 'Spacegrey, brand new. Core i7 3,1 GHz - SSD 512 Go - 16 Go AZERTY - Français',
  address: '30 avenue Charles de Gaulle 35000 Rennes',
  price_per_day: 100,
  user: paul
})
mac_de_paul.photo.attach(io: file9, filename: 'mac1.jpeg', content_type: 'images/jpeg' )
mac_de_paul.save!

msi_de_paul = Laptop.new({
  name: 'MSI - 17,3 pouces',
  description: 'Ideal for designers. Intel Core i7-9750H 12 Mo 2.6 GHz',
  address: '17 avenue de la République 35000 Rennes',
  price_per_day: 70,
  user: paul
})
msi_de_paul.photo.attach(io: file11, filename: 'msi1.jpeg', content_type: 'images/jpeg')
msi_de_paul.save!

mac_de_marine = Laptop.new({
  name: 'Apple MacBook Pro - 15 pouces',
  description: 'Ideal for web development. Core i7 3,1 GHz - SSD 512 Go - 16 Go AZERTY - Français',
  address: '24 rue du Bois 35000 Rennes',
  price_per_day: 100,
  user: marine
})
mac_de_marine.photo.attach(io: file10, filename: 'mac2.jpeg', content_type: 'images/jpeg' )
mac_de_marine.save!

asus_de_marine = Laptop.new({
  name: 'Asus - 15.6 pouces',
  description: 'PC Ultra-Portable. Intel i5-1035G1 - 8 Go RAM - 256 Go SSD - Windows 10',
  address: '24 rue du Bois 35000 Rennes',
  price_per_day: 30,
  user: marine
})
asus_de_marine.photo.attach(io: file5, filename: 'asus.jpeg', content_type: 'images/jpeg')
asus_de_marine.save!

acer_de_marine = Laptop.new({
  name: 'Acer Swift 3 - 13,5 pouces',
  description: 'A bit old but very handy. Full HD (1920 x 1080) 16:9 IPS 16 Go, LPDDR4X 1 To SSD',
  address: '24 rue du Bois 35000 Rennes',
  price_per_day: 20,
  user: marine
})
acer_de_marine.photo.attach(io: file6, filename: 'acer.jpeg', content_type: 'images/jpeg')
acer_de_marine.save!

mac_de_bertrand = Laptop.new({
  name: 'Apple MacBook Air - 15 pouces',
  description: 'Light and easy to carry. Core i7 3,1 GHz - SSD 512 Go - 16 Go AZERTY - Français',
  address: '30 rue de La Plaine 35000 Rennes',
  price_per_day: 80,
  user: bertrand
})
mac_de_bertrand.photo.attach(io: file7, filename: 'mac5.jpeg', content_type: 'images/jpeg')
mac_de_bertrand.save!

acer_de_bertrand = Laptop.new({
  name: 'Acer Aspire - 15,6 pouces',
  description: 'Recommended to work. Processeur Intel® Core™ i3-1005G1 (1,2 GHz / 3,4 GHz)',
  address: '30 rue de La Plaine 35000 Rennes',
  price_per_day: 50,
  user: bertrand
})
acer_de_bertrand.photo.attach(io: file8, filename: 'acer1.jpeg', content_type: 'images/jpeg   ')
acer_de_bertrand.save!

huawei_de_bertrand = Laptop.new({
  name: 'Huawei Matebook X Pro - 23,8 pouces',
  description: 'Intel® Core™ i5-1135G7 - Écran FullView 3K / Tactile',
  address: '30 rue de La Plaine 35000 Rennes',
  price_per_day: 110,
  user: bertrand
})
huawei_de_bertrand.photo.attach(io: file12, filename: 'acer3.jpeg', content_type: 'images/jpeg')
huawei_de_bertrand.save!
