# This file should ensure the existence of records required to run the application in every environment(production,
# development, test).The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin / rails db: seed command(or created alongside the database with db: setup).
#
# Example:
#
#["Action", "Comedy", "Drama", "Horror"].each do | genre_name |
  # MovieGenre.find_or_create_by!(name: genre_name)
# end
require 'date'
require "open-uri"

puts "Purging database..."

Review.destroy_all
Booking.destroy_all
Yacht.destroy_all
User.destroy_all

puts "Creating users..."

User.create!(
    email: 'test@test.com',
    first_name: 'Test',
    last_name: 'Test',
    password: '123456',
    password_confirmation: '123456'
  )

yachtk = User.create!(
    email: 'yachtking@billionairesclub.com',
    first_name: 'Yacht',
    last_name: 'King',
    password: '123456',
    password_confirmation: '123456'
  )
  puts "User #{yachtk.id} is created"

captainw = User.create!(
    email: 'captainwealth@richandfamous.net',
    first_name: 'Captain',
    last_name: 'Wealth',
    password: '123456',
    password_confirmation: '123456'
  )
  puts "User #{captainw.id} is created"

seas = User.create!(
    email: 'seasurfer@highnetluxury.com',
    first_name: 'Sea',
    last_name: 'Surfer',
    password: '123456',
    password_confirmation: '123456'
  )
  puts "User #{seas.id} is created"

yachtym = User.create!(
    email: 'yachtymcboatface@elitevoyages.org',
    first_name: 'Yachty',
    last_name: 'McBoatface',
    password: '123456',
    password_confirmation: '123456'
  )
  puts "User #{yachtym.id} is created"

richw = User.create!(
    email: 'richwave@poshlifestyle.co.uk',
    first_name: 'Rich',
    last_name: 'Wave',
    password: '123456',
    password_confirmation: '123456'
)

luxuryl = User.create!(
    email: 'luxurylover@yachtdreams.com',
    first_name: 'Luxury',
    last_name: 'Lover',
    password: '123456',
    password_confirmation: '123456'
  )
  puts "User #{richw.id} is created"

goldeng = User.create!(
    email: 'goldengoose@wealthywaters.net',
    first_name: 'Golden',
    last_name: 'Goose',
    password: '123456',
    password_confirmation: '123456'
  )
  puts "User #{goldeng.id} is created"

yachta = User.create!(
    email: 'yachtaholic@billionairelife.com',
    first_name: 'Yacht',
    last_name: 'Aholic',
    password: '123456',
    password_confirmation: '123456'
  )
  puts "User #{yachta.id} is created"

wavew = User.create!(
    email: 'wavewalker@poshvoyages.org',
    first_name: 'Wave',
    last_name: 'Walker',
    password: '123456',
    password_confirmation: '123456'
  )
  puts "User #{wavew.id} is created"

sailings = User.create!(
    email: 'sailingstar@luxurynauticals.co.uk',
    first_name: 'Sailing',
    last_name: 'Star',
    password: '123456',
    password_confirmation: '123456'
  )
puts "User #{sailings.id} is created"

puts "#{User.count} users successfully created!"

puts "Creating yachts..."

elysium = Yacht.new(
    user: yachtk,
    name: "Elysium",
    description: "Elysium is a majestic 150-foot superyacht featuring a sleek modern design. With five luxurious cabins, a spacious sundeck, and state-of-the-art amenities, it offers the ultimate in comfort and elegance. Ideal for both relaxation and entertainment, Elysium includes a jacuzzi, a home theater, and a private beach club.",
    price: 1050,
    location: "Monaco, France",
    is_available: true,
    has_captain: false,
    capacity: 4
  )
    file = URI.open("https://res.cloudinary.com/djkohlole/image/upload/v1720208143/istockphoto-2112980112-612x612_jhzttw.jpg")
    elysium.photo.attach(io: file, filename: "nes.jpg", content_type: "image/jpg")
    elysium.save!

  puts "Yacht #{elysium.id} is created"

aphrodite = Yacht.new(
    user: yachtk,
    name: "Aphrodite",
    description: "Aphrodite is a stunning 200-foot yacht designed for those who appreciate the finer things in life. With opulent interiors, an expansive master suite, and four guest cabins, this yacht ensures an unforgettable experience. Enjoy alfresco dining, a fully-equipped gym, and panoramic views from the sky lounge.",
    price: 1575,
    location: "Cannes, France",
    is_available: true,
    has_captain: true,
    capacity: 8
  )
    file = URI.open("https://res.cloudinary.com/djkohlole/image/upload/v1720208143/istockphoto-1874145863-612x612_a0d1e2.jpg")
    aphrodite.photo.attach(io: file, filename: "nes.jpg", content_type: "image/jpg")
    aphrodite.save!

  puts "Yacht #{aphrodite.id} is created"

serenity = Yacht.new(
    user: captainw,
    name: "Serenity",
    description: "Serenity is a 180-foot masterpiece that combines classic elegance with modern technology. It boasts six spacious cabins, a luxurious salon, and an onboard spa. The yacht also features a large pool, a sun deck with a bar, and a gourmet kitchen, making it perfect for entertaining guests.",
    price: 1290,
    location: "Portofino, Italy",
    is_available: true,
    has_captain: true,
    capacity: 6
  )
    file = URI.open("https://res.cloudinary.com/djkohlole/image/upload/v1720208143/istockphoto-1970569182-612x612_stahvt.jpg")
    serenity.photo.attach(io: file, filename: "nes.jpg", content_type: "image/jpg")
    serenity.save!

  puts "Yacht #{serenity.id} is created"

poseidon = Yacht.new(
    user: captainw,
    name: "Poseidon",
    description: "Poseidon is a 170-foot luxury yacht that offers an unparalleled blend of performance and comfort. With five elegant cabins, a spacious main deck, and a stylish sun deck, this yacht is designed for relaxation and adventure. It includes water sports equipment, a jacuzzi, and an outdoor cinema.",
    price: 1145,
    location: "Ibiza, Spain",
    is_available: true,
    has_captain: false,
    capacity: 5
  )
  file = URI.open("https://res.cloudinary.com/djkohlole/image/upload/v1720208140/istockphoto-1457146775-612x612_jcyqvs.jpg")
    poseidon.photo.attach(io: file, filename: "nes.jpg", content_type: "image/jpg")
    poseidon.save!

  puts "Yacht #{poseidon.id} is created"

odyssey = Yacht.new(
    user: seas,
    name: "Odyssey",
    description: "Odyssey is a 190-foot superyacht that epitomizes luxury and sophistication. Featuring six beautifully appointed cabins, a large beach club, and a state-of-the-art entertainment system, Odyssey offers an exceptional yachting experience. Additional amenities include a wellness center, an infinity pool, and a helipad.",
    price: 1430,
    location: "Santorini, Greece",
    is_available: true,
    has_captain: true,
    capacity: 7
  )
    file = URI.open("https://res.cloudinary.com/djkohlole/image/upload/v1720208137/istockphoto-471402693-612x612_yh6jmm.jpg")
    odyssey.photo.attach(io: file, filename: "nes.jpg", content_type: "image/jpg")
    odyssey.save!

  puts "Yacht #{odyssey.id} is created"

nautilus = Yacht.new(
    user: seas,
    name: "Nautilus",
    description: "Nautilus is a 160-foot marvel that perfectly blends performance with luxury. It offers five beautifully designed cabins, a gourmet kitchen, and a spacious sundeck with a bar. Nautilus also features a sauna, a private cinema, and a helipad for seamless travel.",
    price: 1200,
    location: "Miami, USA",
    is_available: true,
    has_captain: false,
    capacity: 5
  )
    file = URI.open("https://res.cloudinary.com/djkohlole/image/upload/v1720208139/istockphoto-1001643196-612x612_nkbmck.jpg")
    nautilus.photo.attach(io: file, filename: "nes.jpg", content_type: "image/jpg")
    nautilus.save!

  puts "Yacht #{nautilus.id} is created"

titan = Yacht.new(
    user: yachtym,
    name: "Titan",
    description: "Titan is a 220-foot yacht that exudes grandeur and elegance. It boasts a magnificent master suite, six guest cabins, and a large dining area. Additional amenities include a spa, a gym, a swimming pool, and a submarine for underwater exploration.",
    price: 2500,
    location: "Dubai, UAE",
    is_available: true,
    has_captain: true,
    capacity: 15
  )
    file = URI.open("https://res.cloudinary.com/djkohlole/image/upload/v1720208138/istockphoto-671476056-612x612_oid4hd.jpg")
    titan.photo.attach(io: file, filename: "nes.jpg", content_type: "image/jpg")
    titan.save!

  puts "Yacht #{titan.id} is created"

atlantis = Yacht.new(
    user: yachtym,
    name: "Atlantis",
    description: "Atlantis is a 210-foot superyacht known for its sleek design and luxurious interiors. It features seven staterooms, a beach club, and an infinity pool. The yacht also has a fully-equipped gym, a sauna, and a state-of-the-art entertainment system.",
    price: 2300,
    location: "Sydney, Australia",
    is_available: true,
    has_captain: true,
    capacity: 12
  )
    file = URI.open("https://res.cloudinary.com/djkohlole/image/upload/v1720208135/istockphoto-182778425-612x612_djkqnt.jpg")
    atlantis.photo.attach(io: file, filename: "nes.jpg", content_type: "image/jpg")
    atlantis.save!

  puts "Yacht #{atlantis.id} is created"

neptune = Yacht.new(
    user: richw,
    name: "Neptune",
    description: "Neptune is a 180-foot yacht that offers an unmatched level of luxury and comfort. It includes six opulent cabins, a sun deck with a hot tub, and a lavish main salon. The yacht also comes with a range of water toys and a private cinema.",
    price: 1500,
    location: "Malibu, USA",
    is_available: true,
    has_captain: false,
    capacity: 8
  )
    file = URI.open("https://res.cloudinary.com/djkohlole/image/upload/v1720208136/istockphoto-470159082-612x612_mek1ih.jpg")
    neptune.photo.attach(io: file, filename: "nes.jpg", content_type: "image/jpg")
    neptune.save!

  puts "Yacht #{neptune.id} is created"

aurora = Yacht.new(
    user: richw,
    name: "Aurora",
    description: "Aurora is a 170-foot yacht that combines classic elegance with modern amenities. It features five spacious cabins, a large salon, and a sun deck with a jacuzzi. Aurora also offers a fitness center, a home theater, and a fully-stocked bar.",
    price: 1350,
    location: "Amalfi Coast, Italy",
    is_available: true,
    has_captain: false,
    capacity: 6
  )
    file = URI.open("https://res.cloudinary.com/djkohlole/image/upload/v1720208136/istockphoto-467026215-612x612_cnxy1q.jpg")
    aurora.photo.attach(io: file, filename: "nes.jpg", content_type: "image/jpg")
    aurora.save!

  puts "Yacht #{aurora.id} is created"

amethyst = Yacht.new(
    user: luxuryl,
    name: "Amethyst",
    description: "Amethyst is a 180-foot luxury yacht known for its sophisticated design and exceptional amenities. It features six beautifully appointed cabins, a spacious sun deck, and a gourmet dining area. Amethyst also includes a spa, a gym, and a state-of-the-art entertainment system.",
    price: 1650,
    location: "Saint-Tropez, France",
    is_available: true,
    has_captain: true,
    capacity: 8
  )
    file = URI.open("https://res.cloudinary.com/djkohlole/image/upload/v1720208137/istockphoto-503692962-612x612_kwwboi.jpg")
    amethyst.photo.attach(io: file, filename: "nes.jpg", content_type: "image/jpg")
    amethyst.save!

  puts "Yacht #{amethyst.id} is created"

stella = Yacht.new(
    user: luxuryl,
    name: "Stella",
    description: "Stella is a 195-foot superyacht that epitomizes luxury and sophistication. With six exquisitely designed cabins, a spacious sun deck, and a state-of-the-art entertainment system, Stella Maris offers an unparalleled yachting experience. Additional amenities include a spa, a gym, and a helipad.",
    price: 1850,
    location: "Dubrovnik, Croatia",
    is_available: true,
    has_captain: false,
    capacity: 9
  )
    file = URI.open("https://res.cloudinary.com/djkohlole/image/upload/v1720208137/istockphoto-471402693-612x612_yh6jmm.jpg")
    stella.photo.attach(io: file, filename: "nes.jpg", content_type: "image/jpg")
    stella.save!

    puts "Yacht #{stella.id} is created"

celestial = Yacht.new(
    user: goldeng,
    name: "Celestial",
    description: "Celestial is a 200-foot masterpiece designed for those who desire the ultimate yachting experience. It offers seven luxurious cabins, a large swimming pool, and a sky lounge. Additional features include a wellness center, a helipad, and a state-of-the-art sound system.",
    price: 2400,
    location: "Mykonos, Greece",
    is_available: true,
    has_captain: true,
    capacity: 14
  )
    file = URI.open("https://res.cloudinary.com/djkohlole/image/upload/v1720208141/istockphoto-1814651998-612x612_khogew.jpg")
    celestial.photo.attach(io: file, filename: "nes.jpg", content_type: "image/jpg")
    celestial.save!

  puts "Yacht #{celestial.id} is created"

galactic = Yacht.new(
    user: goldeng,
    name: "Galactic",
    description: "Galactic is a 190-foot superyacht that offers unrivaled luxury and comfort. It includes six lavish cabins, a sun deck with a jacuzzi, and an expansive salon. The yacht also features a gym, a spa, and a private beach club.",
    price: 2200,
    location: "St. Barts, Caribbean",
    is_available: true,
    has_captain: true,
    capacity: 12
  )
    file = URI.open("https://res.cloudinary.com/djkohlole/image/upload/v1720208143/istockphoto-1970569182-612x612_stahvt.jpg")
    galactic.photo.attach(io: file, filename: "nes.jpg", content_type: "image/jpg")
    galactic.save!

  puts "Yacht #{galactic.id} is created"

sovereign = Yacht.new(
    user: yachta,
    name: "Sovereign",
    description: "Sovereign is a 200-foot superyacht designed to provide the utmost luxury and privacy. It features a spacious master suite, five guest cabins, a sun deck with a hot tub, and a luxurious main salon. Additional amenities include a gym, a sauna, and an onboard cinema.",
    price: 2100,
    location: "Capri, Italy",
    is_available: true,
    has_captain: false,
    capacity: 11
  )
    file = URI.open("https://res.cloudinary.com/djkohlole/image/upload/v1720208139/istockphoto-1436720050-612x612_f96hko.jpg")
    sovereign.photo.attach(io: file, filename: "nes.jpg", content_type: "image/jpg")
    sovereign.save!

  puts "Yacht #{sovereign.id} is created"

majesty = Yacht.new(
    user: yachta,
    name: "Majesty",
    description: "Majesty is a 195-foot yacht that combines opulence with performance. It boasts six elegantly furnished cabins, a gourmet kitchen, and a spacious sundeck. Majesty also features a private spa, a swimming pool, and a state-of-the-art entertainment system.",
    price: 2000,
    location: "Nice, France",
    is_available: true,
    has_captain: false,
    capacity: 10
  )
    file = URI.open("https://res.cloudinary.com/djkohlole/image/upload/v1720266490/istockphoto-671476056-612x612_regbec.jpg")
    majesty.photo.attach(io: file, filename: "nes.jpg", content_type: "image/jpg")
    majesty.save!

  puts "Yacht #{majesty.id} is created"

paradise = Yacht.new(
    user: wavew,
    name: "Paradise",
    description: "Paradise is a luxurious 180-foot yacht designed for unparalleled comfort and style. It offers five beautifully appointed cabins, a fully equipped chef's kitchen, and a stunning sundeck perfect for relaxation. Ocean Paradise includes a Jacuzzi, a helipad, and an advanced navigation system.",
    price: 1800,
    location: "Miami, USA",
    is_available: true,
    has_captain: true,
    capacity: 9
  )
    file = URI.open("https://res.cloudinary.com/djkohlole/image/upload/v1720266491/istockphoto-470159082-612x612_ghuby1.jpg")
    paradise.photo.attach(io: file, filename: "nes.jpg", content_type: "image/jpg")
    paradise.save!

  puts "Yacht #{paradise.id} is created"

elegance = Yacht.new(
    user: wavew,
    name: "Elegance",
    description: "Elegance is a 160-foot yacht crafted for those who appreciate sophistication. With four luxurious cabins, a state-of-the-art galley, and a spacious lounge area, Serene Elegance offers a serene environment for guests. This yacht features a Jacuzzi, a gym, and an impressive collection of water toys.",
    price: 1500,
    location: "Monaco",
    is_available: true,
    has_captain: false,
    capacity: 6
  )
    file = URI.open("https://res.cloudinary.com/djkohlole/image/upload/v1720266489/istockphoto-157197696-612x612_mqbloc.jpg")
    elegance.photo.attach(io: file, filename: "nes.jpg", content_type: "image/jpg")
    elegance.save!

  puts "Yacht #{elegance.id} is created"

horizon = Yacht.new(
    user: sailings,
    name: "Horizon",
    description: "Horizon is a majestic 210-foot yacht renowned for its grandeur and luxury. It boasts seven exquisitely designed cabins, a gourmet dining area, and a spacious sky lounge with panoramic views. Golden Horizon features a cinema, a spa, and a helipad, offering an unparalleled experience for discerning travelers.",
    price: 2500,
    location: "Dubai, UAE",
    is_available: true,
    has_captain: true,
    capacity: 16
  )
    file = URI.open("https://res.cloudinary.com/djkohlole/image/upload/v1720266489/istockphoto-519007031-612x612_d4yelf.jpg")
    horizon.photo.attach(io: file, filename: "nes.jpg", content_type: "image/jpg")
    horizon.save!

    puts "Yacht #{horizon.id} is created"

azure = Yacht.new(
    user: sailings,
    name: "Azure",
    description: "Azure is a 175-foot yacht that epitomizes elegance and comfort. It offers six beautifully furnished cabins, a modern kitchen, and an expansive deck for relaxation. Azure Dream includes a private beach club, a water sports platform, and a state-of-the-art audiovisual system, perfect for entertaining guests.",
    price: 1900,
    location: "Cannes, France",
    is_available: true,
    has_captain: false,
    capacity: 9
  )
   file = URI.open("https://res.cloudinary.com/djkohlole/image/upload/v1720266486/istockphoto-182707595-612x612_uhh8ei.jpg")
   azure.photo.attach(io: file, filename: "nes.jpg", content_type: "image/jpg")
   azure.save!

  puts "Yacht #{azure.id} is created"

  puts "#{Yacht.new} yachts successfully created!"

puts "Creating bookings..."

booking1 = Booking.create!(
    user: yachtk,
    yacht: azure,
    status: "placed",
    start_date: DateTime.strptime("08/12/2024 11:00", "%d/%m/%Y %H:%M"),
    end_date: DateTime.strptime("15/12/2024 18:00", "%d/%m/%Y %H:%M"),
    total_price: 15200,
    number_of_guests: 9,
    captain_needed: false
  )
  puts "Booking #{booking1.id} is created"

booking2 = Booking.create!(
    user: captainw,
    yacht: elegance,
    status: "confirmed",
    start_date: DateTime.strptime("17/11/2024 10:00", "%d/%m/%Y %H:%M"),
    end_date: DateTime.strptime("25/11/2024 16:00", "%d/%m/%Y %H:%M"),
    total_price: 13500,
    number_of_guests: 4,
    captain_needed: true
  )
  puts "Booking #{booking2.id} is created"

booking3 = Booking.create!(
    user: richw,
    yacht: paradise,
    status: "placed",
    start_date: DateTime.strptime("01/10/2024 09:00", "%d/%m/%Y %H:%M"),
    end_date: DateTime.strptime("30/10/2024 20:00", "%d/%m/%Y %H:%M"),
    total_price: 54000,
    number_of_guests: 7,
    captain_needed: true
  )
  puts "Booking #{booking3.id} is created"

  puts "#{Booking.count} bookings successfully created!"

  
