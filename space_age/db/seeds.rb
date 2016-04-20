

  Destination.create(planet: "Mars")


  package = Package.create(title: "Adventure",
                     description: Faker::Lorem.paragraph,
                           price: rand(3..9) + 1000,
                           image: "planet_mars_1.jpeg",
                  destination_id: 1)
  puts "Created #{package.title}, price: #{package.price}"
  package = Package.create(title: "Mars Family",
                     description: Faker::Lorem.paragraph,
                           price: rand(3..9) + 1000,
                           image: "planet_mars_2.jpeg",
                  destination_id: 1)
  puts "Created #{package.title}, price: #{package.price}"
  package = Package.create(title: "Mars Luxury",
                     description: Faker::Lorem.paragraph,
                           price: rand(3..9) + 1000,
                           image: "planet_mars_3.jpeg",
                  destination_id: 1)
  puts "Created #{package.title}, price: #{package.price}"
  package = Package.create(title: "Mars Weekend",
                     description: Faker::Lorem.paragraph,
                           price: rand(3..9) + 1000,
                           image: "planet_mars_4.jpeg",
                  destination_id: 1)
  puts "Created #{package.title}, price: #{package.price}"
  package = Package.create(title: "Mars Service Trip",
                     description: Faker::Lorem.paragraph,
                           price: rand(3..9) + 1000,
                           image: "planet_mars_5.jpeg",
                  destination_id: 1)
  puts "Created #{package.title}, price: #{package.price}"


  Destination.create(planet: "Venus")



  package = Package.create(title: "Venus Adventure",
                     description: Faker::Lorem.paragraph,
                           price: rand(3..9) + 1000,
                           image: "planet_venus_1.jpeg",
                  destination_id: 2)
  puts "Created #{package.title}, price: #{package.price}"
  package = Package.create(title: "Venus Family",
                     description: Faker::Lorem.paragraph,
                           price: rand(3..9) + 1000,
                           image: "planet_venus_2.jpeg",
                  destination_id: 2)
  puts "Created #{package.title}, price: #{package.price}"
  package = Package.create(title: "Venus Luxury",
                     description: Faker::Lorem.paragraph,
                           price: rand(3..9) + 1000,
                           image: "planet_venus_3.jpeg",
                  destination_id: 2)
  puts "Created #{package.title}, price: #{package.price}"
  package = Package.create(title: "Venus Weekend",
                     description: Faker::Lorem.paragraph,
                           price: rand(3..9) + 1000,
                           image: "planet_venus_4.jpeg",
                  destination_id: 2)
  puts "Created #{package.title}, price: #{package.price}"
  package = Package.create(title: "Venus Service Trip",
                     description: Faker::Lorem.paragraph,
                           price: rand(3..9) + 1000,
                           image: "planet_venus_5.jpeg",
                  destination_id: 2)
  puts "Created #{package.title}, price: #{package.price}"



  Destination.create(planet: "Moon")


  package = Package.create(title: "Moon Adventure",
                     description: Faker::Lorem.paragraph,
                           price: rand(3..9) + 1000,
                           image: "planet_moon_1.jpeg",
                  destination_id: 3)
  puts "Created #{package.title}, price: #{package.price}"
  package = Package.create(title: "Moon Family",
                     description: Faker::Lorem.paragraph,
                           price: rand(3..9) + 1000,
                           image: "planet_moon_2.jpeg",
                  destination_id: 3)
  puts "Created #{package.title}, price: #{package.price}"
  package = Package.create(title: "Moon Luxury",
                     description: Faker::Lorem.paragraph,
                           price: rand(3..9) + 1000,
                           image: "planet_moon_3.jpeg",
                  destination_id: 3)
  puts "Created #{package.title}, price: #{package.price}"
  package = Package.create(title: "Moon Weekend",
                     description: Faker::Lorem.paragraph,
                           price: rand(3..9) + 1000,
                           image: "planet_moon_4.jpeg",
                  destination_id: 3)
  puts "Created #{package.title}, price: #{package.price}"
  package = Package.create(title: "Moon Service Trip",
                     description: Faker::Lorem.paragraph,
                           price: rand(3..9) + 1000,
                           image: "planet_moon_5.jpeg",
                  destination_id: 3)
  puts "Created #{package.title}, price: #{package.price}"
