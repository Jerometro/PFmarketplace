require "open-uri"
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

  # Booking.destroy_all
  # Laptop.destroy_all

puts "destroy Cars"
  Car.destroy_all
puts "destroy Users"
  User.destroy_all

file1 = URI.open('https://www.garagegasquet-renault.fr/wp-content/uploads/2018/09/RENAULT-TWINGO-III-ZEN-SCE-70_1.jpg')
file2 = URI.open('https://flic.kr/p/2kt1n73')
file3 = URI.open('https://flic.kr/p/bVza4N')
file4 = URI.open('https://flic.kr/p/2kSQ6cd')
file5 = URI.open('https://www.garagegasquet-renault.fr/wp-content/uploads/2018/09/RENAULT-TWINGO-III-ZEN-SCE-70_1.jpg')
file6 = URI.open('https://www.garagegasquet-renault.fr/wp-content/uploads/2018/09/RENAULT-TWINGO-III-ZEN-SCE-70_1.jpg')

puts "Create Users"
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

lucie = User.create!({
  first_name: 'Lucie',
  last_name: 'Truc',
  email: 'lucie@truc.com',
  password: '12345678'
})

michel = User.create!({
  first_name: 'Michel',
  last_name: 'Machin',
  email: 'michel@machin.com',
  password: '12345678'
})

puts "Create Serge's car"
twingo_de_serge = Car.new({
  name: 'eTwingo',
  description: 'Very good car',
  address: '1 Rue Victor le Gorgeu, 35000 Rennes, Bretagne, France',
  area: 'Rennes, Bretagne, France',
  price_per_day: 40,
  user: serge
})
twingo_de_serge.photo.attach(io: file1, filename: 'twingo.jpeg', content_type: 'images/jpeg')
twingo_de_serge.save!

# article = Article.new(title: 'NES', body: "A great console")

puts "Create Marine's car"
clio_de_marine = Car.new({
  name: 'eClio',
  description: 'Very good car',
  address: '27 Rue Alphonse Milon, 35760 Saint-Grégoire, Bretagne, France',
  area: 'Rennes, Bretagne, France',
  price_per_day: 50,
  user: marine
})
clio_de_marine.photo.attach(io: file2, filename: 'clio.jpeg', content_type: 'images/jpeg')
clio_de_marine.save!


puts "Create Bertrand's car"
micra_de_bertrand = Car.new({
  name: 'eMicra',
  description: 'Very good car',
  address: '1 Rue du Prieuré, 35220 Châteaubourg, Bretagne, France',
  area: 'Rennes, Bretagne, France',
  price_per_day: 45,
  user: bertrand
})
micra_de_bertrand.photo.attach(io: file3, filename: 'micra.jpeg', content_type: 'images/jpeg')
micra_de_bertrand.save!

puts "Create Paul's car"
fiat500_de_paul = Car.new({
  name: 'eFiat500',
  description: 'Very good car',
  address: '4 Rue des Violettes, 35132 Vezin-le-Coquet, Bretagne, France',
  area: 'Rennes, Bretagne, France',
  price_per_day: 50,
  user: paul
})
fiat500_de_paul.photo.attach(io: file4, filename: 'fiat500.jpeg', content_type: 'images/jpeg')
fiat500_de_paul.save!


puts "Create Lucie's car"
twingo_de_lucie = Car.new({
  name: 'eTwingo',
  description: 'Very good car',
  address: '16 Rue du Dauphiné, 22300 Lannion, Bretagne, France',
  area: 'Lannion, Bretagne, France',
  price_per_day: 40,
  user: lucie
})
twingo_de_lucie.photo.attach(io: file5, filename: 'twingo.jpeg', content_type: 'images/jpeg')
twingo_de_lucie.save!

puts "Create Michel's car"
twingo_de_michel = Car.new({
  name: 'eTwingo',
  description: 'Very good car',
  address: '1 Rue François le Bricquir, 22700 Saint-Quay-Perros, Bretagne, France',
  area: 'Lannion, Bretagne, France',
  price_per_day: 40,
  user: michel
})
twingo_de_michel.photo.attach(io: file6, filename: 'twingo.jpeg', content_type: 'images/jpeg')
twingo_de_michel.save!
