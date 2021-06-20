require 'open-uri'
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

  # Booking.destroy_all
  # Laptop.destroy_all
  Car.destroy_all
  User.destroy_all


file1 = URI.open("https://www.flickr.com/photos/idiapo/13903929806/in/photolist-nbDgVG-2jWeSBV-G4138V-4AnFE2-8z7YCb-2innFaU-97VpsX-2k59Sb7-2hW8iKT-8z4RYg-2hWbTFS-29B3CnD-hTQq1F-EDcgNu-4AnFKT-2ksJ9rw-2ksMRLN-mfNFge-2gUBgbb-fj5wfY-6XjY3o-9k7CKx-c2aN8-2jGiWu5-X6p4qA-2gUAwqB-2hE1R8r-NZovAC-2edqjtR-8TQ9FP-29GSG2v-UYzH3K-8TQ9GH-EDcsc5-dkydrK-bxqkwG-8TQ9EZ-X5w871-nSGsDv-2jza92p-2hDX2vz-dnrmSU-8TQ9Hv-2kAunX7-2kEYWLe-MtfReZ-2kEYWMm-2eUh4FY-7M5AxA-oeBfH4/")
file2 = URI.open("https://www.flickr.com/photos/164173524@N07/50845087522/in/photolist-2kt1n73-8j54Un-ccoYtU-Je1Q5m-USXWPf-PcFyNb-2kdjT46-2icynTg-2kdjT3E-Kts44x-2hv2DiT-9eCbtM-TnWGxJ-2koiCq1-YFbaFm-2hSep3n-2dCkCky-2fUmauW-S5zj54-wN74bQ-2iQEwCN-2cjbQtZ-25JZU59-MyGkZY-CjnEbj-BLFoPW-aztVgb-2iLitMc-HJmaVt-Zk54hu-2j2DPL9-Z2u4Uf-2kVjQdw-Cb3AVe-261LKj8-2kWrjvc-2m6yPSc-dTGHri-2kTYfGU-qwFGGR-2kDKPch-2j2Bd9t-2k3XW4M-2jhDXGw-dK49xz-nzLSFn-2ibbrse-bzfYCE-XSVZSt-2kHxxEk")
file3 = URI.open("https://www.flickr.com/photos/69929929@N06/7169811160/in/photolist-bVza4N-bVz9ss-bVyLzy-bVyRu3-2jw3dkk-bVzev1-bVyMq3-bVz5gE-bVzjby-bVz5FN-bVz7T1-bVz3mU-bVzgbj-bVyNgo-BzPg1x-bVz8g3-TQaJdC-bVyU1E-bVz5y1-bVz3s7-2bm5KjA-bVz7Hs-bVz8bN-bVyWoL-bVyV5S-V7EtYV-KrU1dx-bVzgXo-bVz1UY-bVyLSC-2cs3pHp-bVzi9w-6M61Xd-bVz59u-bVzbbb-2k6wm3G-bVz8Cw-bVzizJ-bVz21o-2k8wHWi-bVyMcY-24t44Hu-29Cxe4d-2kx1nrU-28GSNbP-2iw9LCQ-KJzanG-PN8hgA-bVyRNQ-bVz3ZJ")
file4 = URI.open("https://www.flickr.com/photos/65005481@N06/51114678782/in/photolist-2kSQ6cd-2kSRHH9-2kBRpzC-2kEB2aH-2kUTCQT-2kM1nwQ-2kBSoxB-2kwPwFX-2kM1nCr-2kRCG1h-2kvv39P-2m26U2G-2jY7KjN-2kM57mV-2m2Pqcv-2kkHfML-2kDLS7f-2kZW7Lp-2kBAYtd-2kM1nBj-2kM57qh-2kM57mE-2kByCYx-2kM1nAs-2kPH9zT-2kHjq7a-2kxKyS8-2kvBCGP-2kvBCHk-2kU7jr6-2m2psKZ-2ku38Et-2kvKQYP-2m6upbE-2m5EkCM-SuqduG-2ktXWVg-2ku38ED-2m23stT-2kMrNtB-2kvC6F4-2deM2AH-2m2vuns-2m5q3CP-QW5rXT-245XDEv-2kZ6Ukr-2kptG5U-2kNjHiB-2m4Ahqu")

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



twingo_de_serge = Car.new({
  name: 'eTwingo',
  description: 'Very good car',
  address: 'Estr. da Pontinha 7, 1600-582 Lisboa, Portugal',
  price_per_day: 40,
  user: serge
})
twingo_de_serge.photo.attach(io: file1, filename: 'twingo.jpeg', content_type: 'images/jpeg')
twingo_de_serge.save!


clio_de_marine = Car.new({
  name: 'eClio',
  description: 'Very good car',
  address: 'Av. Nuno Krus Abecassis 4-40, 1750-456 Lisboa, Portugal',
  price_per_day: 50,
  user: marine
})
clio_de_marine.photo.attach(io: file2, filename: 'clio.jpeg', content_type: 'images/jpeg')
clio_de_marine.save!


micra_de_bertrand = Car.new({
  name: 'eMicra',
  description: 'Very good car',
  address: 'R. Jacinto Duarte 131-45, 2660-270 Santo António dos Cavaleiros, Portugal',
  price_per_day: 45,
  user: bertrand
})
micra_de_bertrand.photo.attach(io: file3, filename: 'micra.jpeg', content_type: 'images/jpeg')
micra_de_bertrand.save!


fiat500_de_paul = Car.new({
  name: 'eFiat500',
  description: 'Very good car',
  address: 'Av. José Torres 2, Amadora, Portugal',
  price_per_day: 50,
  user: paul
})
fiat500_de_paul.photo.attach(io: file4, filename: 'fiat500.jpeg', content_type: 'images/jpeg')
fiat500_de_paul.save!
