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

elysium = Yacht.create!(
    user: yachtk,
    name: "Elysium",
    description: "Elysium is a majestic 150-foot superyacht featuring a sleek modern design. With five luxurious cabins, a spacious sundeck, and state-of-the-art amenities, it offers the ultimate in comfort and elegance. Ideal for both relaxation and entertainment, Elysium includes a jacuzzi, a home theater, and a private beach club.",
    price: 1050,
    location: "Monaco, France",
    is_available: true,
    has_captain: false,
    capacity: 4,
    photo: "https://res.cloudinary.com/djkohlole/image/upload/v1720208143/istockphoto-1874145863-612x612_a0d1e2.jpg"
  )
  puts "Yacht #{elysium.id} is created"

aphrodite = Yacht.create!(
    user: yachtk,
    name: "Aphrodite",
    description: "Aphrodite is a stunning 200-foot yacht designed for those who appreciate the finer things in life. With opulent interiors, an expansive master suite, and four guest cabins, this yacht ensures an unforgettable experience. Enjoy alfresco dining, a fully-equipped gym, and panoramic views from the sky lounge.",
    price: 1575,
    location: "Cannes, France",
    is_available: true,
    has_captain: true,
    capacity: 8,
    photo: "https://res.cloudinary.com/djkohlole/image/upload/v1720208143/istockphoto-1874145863-612x612_a0d1e2.jpg"
  )
  puts "Yacht #{aphrodite.id} is created"

serenity = Yacht.create!(
    user: captainw,
    name: "Serenity",
    description: "Serenity is a 180-foot masterpiece that combines classic elegance with modern technology. It boasts six spacious cabins, a luxurious salon, and an onboard spa. The yacht also features a large pool, a sun deck with a bar, and a gourmet kitchen, making it perfect for entertaining guests.",
    price: 1290,
    location: "Portofino, Italy",
    is_available: true,
    has_captain: true,
    capacity: 6,
    photo: "https://res.cloudinary.com/djkohlole/image/upload/v1720208143/istockphoto-1874145863-612x612_a0d1e2.jpg"
  )
  puts "Yacht #{serenity.id} is created"

poseidon = Yacht.create!(
    user: captainw,
    name: "Poseidon",
    description: "Poseidon is a 170-foot luxury yacht that offers an unparalleled blend of performance and comfort. With five elegant cabins, a spacious main deck, and a stylish sun deck, this yacht is designed for relaxation and adventure. It includes water sports equipment, a jacuzzi, and an outdoor cinema.",
    price: 1145,
    location: "Ibiza, Spain",
    is_available: true,
    has_captain: false,
    capacity: 5,
    photo: "https://res.cloudinary.com/djkohlole/image/upload/v1720208143/istockphoto-1874145863-612x612_a0d1e2.jpg"
  )
  puts "Yacht #{poseidon.id} is created"

odyssey = Yacht.create!(
    user: seas,
    name: "Odyssey",
    description: "Odyssey is a 190-foot superyacht that epitomizes luxury and sophistication. Featuring six beautifully appointed cabins, a large beach club, and a state-of-the-art entertainment system, Odyssey offers an exceptional yachting experience. Additional amenities include a wellness center, an infinity pool, and a helipad.",
    price: 1430,
    location: "Santorini, Greece",
    is_available: true,
    has_captain: true,
    capacity: 7,
    photo: "https://res.cloudinary.com/djkohlole/image/upload/v1720208143/istockphoto-1874145863-612x612_a0d1e2.jpg"
  )
  puts "Yacht #{odyssey.id} is created"

nautilus = Yacht.create!(
    user: seas,
    name: "Nautilus",
    description: "Nautilus is a 160-foot marvel that perfectly blends performance with luxury. It offers five beautifully designed cabins, a gourmet kitchen, and a spacious sundeck with a bar. Nautilus also features a sauna, a private cinema, and a helipad for seamless travel.",
    price: 1200,
    location: "Miami, USA",
    is_available: true,
    has_captain: false,
    capacity: 5,
    photo: "https://res.cloudinary.com/djkohlole/image/upload/v1720208143/istockphoto-1874145863-612x612_a0d1e2.jpg"
  )
  puts "Yacht #{nautilus.id} is created"

titan = Yacht.create!(
    user: yachtym,
    name: "Titan",
    description: "Titan is a 220-foot yacht that exudes grandeur and elegance. It boasts a magnificent master suite, six guest cabins, and a large dining area. Additional amenities include a spa, a gym, a swimming pool, and a submarine for underwater exploration.",
    price: 2500,
    location: "Dubai, UAE",
    is_available: true,
    has_captain: true,
    capacity: 15,
    photo: "https://res.cloudinary.com/djkohlole/image/upload/v1720208143/istockphoto-1874145863-612x612_a0d1e2.jpg"
  )
  puts "Yacht #{titan.id} is created"

atlantis = Yacht.create!(
    user: yachtym,
    name: "Atlantis",
    description: "Atlantis is a 210-foot superyacht known for its sleek design and luxurious interiors. It features seven staterooms, a beach club, and an infinity pool. The yacht also has a fully-equipped gym, a sauna, and a state-of-the-art entertainment system.",
    price: 2300,
    location: "Sydney, Australia",
    is_available: true,
    has_captain: true,
    capacity: 12,
    photo: "https://res.cloudinary.com/djkohlole/image/upload/v1720208143/istockphoto-1874145863-612x612_a0d1e2.jpg"
  )
  puts "Yacht #{atlantis.id} is created"

neptune = Yacht.create!(
    user: richw,
    name: "Neptune",
    description: "Neptune is a 180-foot yacht that offers an unmatched level of luxury and comfort. It includes six opulent cabins, a sun deck with a hot tub, and a lavish main salon. The yacht also comes with a range of water toys and a private cinema.",
    price: 1500,
    location: "Malibu, USA",
    is_available: true,
    has_captain: false,
    capacity: 8,
    photo: "https://res.cloudinary.com/djkohlole/image/upload/v1720208143/istockphoto-1874145863-612x612_a0d1e2.jpg"
  )
  puts "Yacht #{neptune.id} is created"

aurora = Yacht.create!(
    user: richw,
    name: "Aurora",
    description: "Aurora is a 170-foot yacht that combines classic elegance with modern amenities. It features five spacious cabins, a large salon, and a sun deck with a jacuzzi. Aurora also offers a fitness center, a home theater, and a fully-stocked bar.",
    price: 1350,
    location: "Amalfi Coast, Italy",
    is_available: true,
    has_captain: false,
    capacity: 6,
    photo: "https://res.cloudinary.com/djkohlole/image/upload/v1720208143/istockphoto-1874145863-612x612_a0d1e2.jpg"
  )
  puts "Yacht #{aurora.id} is created"

amethyst = Yacht.create!(
    user: luxuryl,
    name: "Amethyst",
    description: "Amethyst is a 180-foot luxury yacht known for its sophisticated design and exceptional amenities. It features six beautifully appointed cabins, a spacious sun deck, and a gourmet dining area. Amethyst also includes a spa, a gym, and a state-of-the-art entertainment system.",
    price: 1650,
    location: "Saint-Tropez, France",
    is_available: true,
    has_captain: true,
    capacity: 8,
    photo: "https://res.cloudinary.com/djkohlole/image/upload/v1720208143/istockphoto-1874145863-612x612_a0d1e2.jpg"
  )

stella = Yacht.create!(
    user: luxuryl,
    name: "Stella",
    description: "Stella is a 195-foot superyacht that epitomizes luxury and sophistication. With six exquisitely designed cabins, a spacious sun deck, and a state-of-the-art entertainment system, Stella Maris offers an unparalleled yachting experience. Additional amenities include a spa, a gym, and a helipad.",
    price: 1850,
    location: "Dubrovnik, Croatia",
    is_available: true,
    has_captain: false,
    capacity: 9,
    photo: "https://res.cloudinary.com/djkohlole/image/upload/v1720208143/istockphoto-1874145863-612x612_a0d1e2.jpg"
  )

celestial = Yacht.create!(
    user: goldeng,
    name: "Celestial",
    description: "Celestial is a 200-foot masterpiece designed for those who desire the ultimate yachting experience. It offers seven luxurious cabins, a large swimming pool, and a sky lounge. Additional features include a wellness center, a helipad, and a state-of-the-art sound system.",
    price: 2400,
    location: "Mykonos, Greece",
    is_available: true,
    has_captain: true,
    capacity: 14,
    photo: "https://res.cloudinary.com/djkohlole/image/upload/v1720208143/istockphoto-1874145863-612x612_a0d1e2.jpg"
  )
  puts "Yacht #{celestial.id} is created"

galactic = Yacht.create!(
    user: goldeng,
    name: "Galactic",
    description: "Galactic is a 190-foot superyacht that offers unrivaled luxury and comfort. It includes six lavish cabins, a sun deck with a jacuzzi, and an expansive salon. The yacht also features a gym, a spa, and a private beach club.",
    price: 2200,
    location: "St. Barts, Caribbean",
    is_available: true,
    has_captain: true,
    capacity: 12,
    photo: "https://res.cloudinary.com/djkohlole/image/upload/v1720208143/istockphoto-1874145863-612x612_a0d1e2.jpg"
  )
  puts "Yacht #{galactic.id} is created"

sovereign = Yacht.create!(
    user: yachta,
    name: "Sovereign",
    description: "Sovereign is a 200-foot superyacht designed to provide the utmost luxury and privacy. It features a spacious master suite, five guest cabins, a sun deck with a hot tub, and a luxurious main salon. Additional amenities include a gym, a sauna, and an onboard cinema.",
    price: 2100,
    location: "Capri, Italy",
    is_available: true,
    has_captain: false,
    capacity: 11,
    photo: "https://res.cloudinary.com/djkohlole/image/upload/v1720208143/istockphoto-1874145863-612x612_a0d1e2.jpg"
  )
  puts "Yacht #{sovereign.id} is created"

majesty = Yacht.create!(
    user: yachta,
    name: "Majesty",
    description: "Majesty is a 195-foot yacht that combines opulence with performance. It boasts six elegantly furnished cabins, a gourmet kitchen, and a spacious sundeck. Majesty also features a private spa, a swimming pool, and a state-of-the-art entertainment system.",
    price: 2000,
    location: "Nice, France",
    is_available: true,
    has_captain: false,
    capacity: 10,
    photo: "https://res.cloudinary.com/djkohlole/image/upload/v1720208143/istockphoto-1874145863-612x612_a0d1e2.jpg"
  )
  puts "Yacht #{majesty.id} is created"

paradise = Yacht.create!(
    user: wavew,
    name: "Paradise",
    description: "Paradise is a luxurious 180-foot yacht designed for unparalleled comfort and style. It offers five beautifully appointed cabins, a fully equipped chef's kitchen, and a stunning sundeck perfect for relaxation. Ocean Paradise includes a Jacuzzi, a helipad, and an advanced navigation system.",
    price: 1800,
    location: "Miami, USA",
    is_available: true,
    has_captain: true,
    capacity: 9,
    photo: "https://res.cloudinary.com/djkohlole/image/upload/v1720208143/istockphoto-1874145863-612x612_a0d1e2.jpg"
  )
  puts "Yacht #{paradise.id} is created"

elegance = Yacht.create!(
    user: wavew,
    name: "Elegance",
    description: "Elegance is a 160-foot yacht crafted for those who appreciate sophistication. With four luxurious cabins, a state-of-the-art galley, and a spacious lounge area, Serene Elegance offers a serene environment for guests. This yacht features a Jacuzzi, a gym, and an impressive collection of water toys.",
    price: 1500,
    location: "Monaco",
    is_available: true,
    has_captain: false,
    capacity: 6,
    photo: "https://res.cloudinary.com/djkohlole/image/upload/v1720208143/istockphoto-1874145863-612x612_a0d1e2.jpg"
  )
  puts "Yacht #{elegance.id} is created"

horizon = Yacht.create!(
    user: sailings,
    name: "Horizon",
    description: "Horizon is a majestic 210-foot yacht renowned for its grandeur and luxury. It boasts seven exquisitely designed cabins, a gourmet dining area, and a spacious sky lounge with panoramic views. Golden Horizon features a cinema, a spa, and a helipad, offering an unparalleled experience for discerning travelers.",
    price: 2500,
    location: "Dubai, UAE",
    is_available: true,
    has_captain: true,
    capacity: 16,
    photo: "https://res.cloudinary.com/djkohlole/image/upload/v1720208143/istockphoto-1874145863-612x612_a0d1e2.jpg"
  )
  puts "Yacht #{horizon.id} is created"

azure = Yacht.create!(
    user: sailings,
    name: "Azure",
    description: "Azure is a 175-foot yacht that epitomizes elegance and comfort. It offers six beautifully furnished cabins, a modern kitchen, and an expansive deck for relaxation. Azure Dream includes a private beach club, a water sports platform, and a state-of-the-art audiovisual system, perfect for entertaining guests.",
    price: 1900,
    location: "Cannes, France",
    is_available: true,
    has_captain: false,
    capacity: 9,
    photo: "https://res.cloudinary.com/djkohlole/image/upload/v1720208143/istockphoto-1874145863-612x612_a0d1e2.jpg"
  )
  puts "Yacht #{azure.id} is created"

  puts "#{Yacht.count} yachts successfully created!"

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

  
