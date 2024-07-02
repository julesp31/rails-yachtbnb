# This file should ensure the existence of records required to run the application in every environment(production,
  # development, test).The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin / rails db: seed command(or created alongside the database with db: setup).
#
# Example:
  #
#["Action", "Comedy", "Drama", "Horror"].each do | genre_name |
    # MovieGenre.find_or_create_by!(name: genre_name)
  # end

  puts "Purging database..."

  User.destroy_all
  Yacht.destroy_all
  Booking.destroy_all
  Review.destroy_all

  puts "Creating users..."
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
      price: 10500000,
      location: "Monaco, France"
    )
    puts "Yacht #{elysium.id} is created"

  aphrodite = Yacht.create!(
      user: yachtk,
      name: "Aphrodite",
      description: "Aphrodite is a stunning 200-foot yacht designed for those who appreciate the finer things in life. With opulent interiors, an expansive master suite, and four guest cabins, this yacht ensures an unforgettable experience. Enjoy alfresco dining, a fully-equipped gym, and panoramic views from the sky lounge.",
      price: 15750000,
      location: "Cannes, France"
    )
    puts "Yacht #{aphrodite.id} is created"

  serenity = Yacht.create!(
      user: captainw,
      name: "Serenity",
      description: "Serenity is a 180-foot masterpiece that combines classic elegance with modern technology. It boasts six spacious cabins, a luxurious salon, and an onboard spa. The yacht also features a large pool, a sun deck with a bar, and a gourmet kitchen, making it perfect for entertaining guests.",
      price: 12900000,
      location: "Portofino, Italy"
    )
    puts "Yacht #{serenity.id} is created"

  poseidon = Yacht.create!(
      user: captainw,
      name: "Poseidon",
      description: "Poseidon is a 170-foot luxury yacht that offers an unparalleled blend of performance and comfort. With five elegant cabins, a spacious main deck, and a stylish sun deck, this yacht is designed for relaxation and adventure. It includes water sports equipment, a jacuzzi, and an outdoor cinema.",
      price: 11450000,
      location: "Ibiza, Spain"
    )
    puts "Yacht #{poseidon.id} is created"

  odyssey = Yacht.create!(
      user: seas,
      name: "Odyssey",
      description: "Odyssey is a 190-foot superyacht that epitomizes luxury and sophistication. Featuring six beautifully appointed cabins, a large beach club, and a state-of-the-art entertainment system, Odyssey offers an exceptional yachting experience. Additional amenities include a wellness center, an infinity pool, and a helipad.",
      price: 14300000,
      location: "Santorini, Greece"
    )
    puts "Yacht #{odyssey.id} is created"

  nautilus = Yacht.create!(
      user: seas,
      name: "Nautilus",
      description: "Nautilus is a 160-foot marvel that perfectly blends performance with luxury. It offers five beautifully designed cabins, a gourmet kitchen, and a spacious sundeck with a bar. Nautilus also features a sauna, a private cinema, and a helipad for seamless travel.",
      price: 12000000,
      location: "Miami, USA"
    )
    puts "Yacht #{nautilus.id} is created"

  titan = Yacht.create!(
      user: yachtym,
      name: "Titan",
      description: "Titan is a 220-foot yacht that exudes grandeur and elegance. It boasts a magnificent master suite, six guest cabins, and a large dining area. Additional amenities include a spa, a gym, a swimming pool, and a submarine for underwater exploration.",
      price: 25000000,
      location: "Dubai, UAE"
    )
    puts "Yacht #{titan.id} is created"

  atlantis = Yacht.create!(
      user: yachtym,
      name: "Atlantis",
      description: "Atlantis is a 210-foot superyacht known for its sleek design and luxurious interiors. It features seven staterooms, a beach club, and an infinity pool. The yacht also has a fully-equipped gym, a sauna, and a state-of-the-art entertainment system.",
      price: 23000000,
      location: "Sydney, Australia"
    )
    puts "Yacht #{atlantis.id} is created"

  neptune = Yacht.create!(
      user: richw,
      name: "Neptune",
      description: "Neptune is a 180-foot yacht that offers an unmatched level of luxury and comfort. It includes six opulent cabins, a sun deck with a hot tub, and a lavish main salon. The yacht also comes with a range of water toys and a private cinema.",
      price: 15000000,
      location: "Malibu, USA"
    )
    puts "Yacht #{neptune.id} is created"

  aurora = Yacht.create!(
      user: richw,
      name: "Aurora",
      description: "Aurora is a 170-foot yacht that combines classic elegance with modern amenities. It features five spacious cabins, a large salon, and a sun deck with a jacuzzi. Aurora also offers a fitness center, a home theater, and a fully-stocked bar.",
      price: 13500000,
      location: "Amalfi Coast, Italy"
    )
    puts "Yacht #{aurora.id} is created"

  amethyst = Yacht.create!(
      user: luxuryl,
      name: "Amethyst",
      description: "Amethyst is a 180-foot luxury yacht known for its sophisticated design and exceptional amenities. It features six beautifully appointed cabins, a spacious sun deck, and a gourmet dining area. Amethyst also includes a spa, a gym, and a state-of-the-art entertainment system.",
      price: 16500000,
      location: "Saint-Tropez, France"
    )

  stella = Yacht.create!(
      user: luxuryl,
      name: "Stella",
      description: "Stella is a 195-foot superyacht that epitomizes luxury and sophistication. With six exquisitely designed cabins, a spacious sun deck, and a state-of-the-art entertainment system, Stella Maris offers an unparalleled yachting experience. Additional amenities include a spa, a gym, and a helipad.",
      price: 18500000,
      location: "Dubrovnik, Croatia"
    )

  celestial = Yacht.create!(
      user: goldeng,
      name: "Celestial",
      description: "Celestial is a 200-foot masterpiece designed for those who desire the ultimate yachting experience. It offers seven luxurious cabins, a large swimming pool, and a sky lounge. Additional features include a wellness center, a helipad, and a state-of-the-art sound system.",
      price: 24000000,
      location: "Mykonos, Greece"
    )
    puts "Yacht #{celestial.id} is created"

  galactic = Yacht.create!(
      user: goldeng,
      name: "Galactic",
      description: "Galactic is a 190-foot superyacht that offers unrivaled luxury and comfort. It includes six lavish cabins, a sun deck with a jacuzzi, and an expansive salon. The yacht also features a gym, a spa, and a private beach club.",
      price: 22000000,
      location: "St. Barts, Caribbean"
    )
    puts "Yacht #{galactic.id} is created"

  sovereign = Yacht.create!(
      user: yachta,
      name: "Sovereign",
      description: "Sovereign is a 200-foot superyacht designed to provide the utmost luxury and privacy. It features a spacious master suite, five guest cabins, a sun deck with a hot tub, and a luxurious main salon. Additional amenities include a gym, a sauna, and an onboard cinema.",
      price: 21000000,
      location: "Capri, Italy"
    )
    puts "Yacht #{sovereign.id} is created"

  majesty = Yacht.create!(
      user: yachta,
      name: "Majesty",
      description: "Majesty is a 195-foot yacht that combines opulence with performance. It boasts six elegantly furnished cabins, a gourmet kitchen, and a spacious sundeck. Majesty also features a private spa, a swimming pool, and a state-of-the-art entertainment system.",
      price: 20000000,
      location: "Nice, France"
    )
    puts "Yacht #{majesty.id} is created"

  paradise = Yacht.create!(
      user: wavew,
      name: "Paradise",
      description: "Paradise is a luxurious 180-foot yacht designed for unparalleled comfort and style. It offers five beautifully appointed cabins, a fully equipped chef's kitchen, and a stunning sundeck perfect for relaxation. Ocean Paradise includes a Jacuzzi, a helipad, and an advanced navigation system.",
      price: 18000000,
      location: "Miami, USA"
    )
    puts "Yacht #{paradise.id} is created"

  elegance = Yacht.create!(
      user: wavew,
      name: "Elegance",
      description: "Elegance is a 160-foot yacht crafted for those who appreciate sophistication. With four luxurious cabins, a state-of-the-art galley, and a spacious lounge area, Serene Elegance offers a serene environment for guests. This yacht features a Jacuzzi, a gym, and an impressive collection of water toys.",
      price: 15000000,
      location: "Monaco"
    )
    puts "Yacht #{elegance.id} is created"

  horizon = Yacht.create!(
      user: sailings,
      name: "Horizon",
      description: "Horizon is a majestic 210-foot yacht renowned for its grandeur and luxury. It boasts seven exquisitely designed cabins, a gourmet dining area, and a spacious sky lounge with panoramic views. Golden Horizon features a cinema, a spa, and a helipad, offering an unparalleled experience for discerning travelers.",
      price: 25000000,
      location: "Dubai, UAE"
    )
    puts "Yacht #{horizon.id} is created"

  azure = Yacht.create!(
      user: sailings,
      name: "Azure",
      description: "Azure is a 175-foot yacht that epitomizes elegance and comfort. It offers six beautifully furnished cabins, a modern kitchen, and an expansive deck for relaxation. Azure Dream includes a private beach club, a water sports platform, and a state-of-the-art audiovisual system, perfect for entertaining guests.",
      price: 19000000,
      location: "Cannes, France"
    )
  puts "Yacht #{azure.id} is created"

  puts "#{Yacht.count} yachts successfully created!"
