

  Destination.create(planet: "Mars")


  package = Package.create(title: "Adventure",
                     description: Faker::Lorem.paragraph,
                           price: rand(3..9) + 1000,
                           image: File.new("#{Rails.root}/app/assets/images/planet_mars_1.jpg"),
                  destination_id: 1,
                          status: 0)
  puts "Created #{package.title}, price: #{package.price}"
  puts "Status: #{package.status}"
  package = Package.create(title: "Mars Family",
                     description: Faker::Lorem.paragraph,
                           price: rand(3..9) + 1000,
                           image: File.new("#{Rails.root}/app/assets/images/planet_mars_2.jpg"),
                  destination_id: 1,
                          status: 0)
  puts "Created #{package.title}, price: #{package.price}"
  puts "Status: #{package.status}"
  package = Package.create(title: "Mars Luxury",
                     description: Faker::Lorem.paragraph,
                           price: rand(3..9) + 1000,
                           image: File.new("#{Rails.root}/app/assets/images/planet_mars_3.jpg"),
                  destination_id: 1,
                          status: 0)
  puts "Created #{package.title}, price: #{package.price}"
  puts "Status: #{package.status}"
  package = Package.create(title: "Mars Weekend",
                     description: Faker::Lorem.paragraph,
                           price: rand(3..9) + 1000,
                           image: File.new("#{Rails.root}/app/assets/images/planet_mars_4.jpg"),
                  destination_id: 1,
                          status: 0)
  puts "Created #{package.title}, price: #{package.price}"
  puts "Status: #{package.status}"
  package = Package.create(title: "Mars Service Trip",
                     description: Faker::Lorem.paragraph,
                           price: rand(3..9) + 1000,
                           image: File.new("#{Rails.root}/app/assets/images/planet_mars_5.jpg"),
                  destination_id: 1,
                          status: 0)
  puts "Created #{package.title}, price: #{package.price}"
  puts "Status: #{package.status}\n\n"



  Destination.create(planet: "Venus")


  package = Package.create(title: "Venus Adventure",
                     description: Faker::Lorem.paragraph,
                           price: rand(3..9) + 1000,
                           image: File.new("#{Rails.root}/app/assets/images/planet_venus_1.jpg"),
                  destination_id: 2,
                          status: 0)
  puts "Created #{package.title}, price: #{package.price}"
  puts "Status: #{package.status}"
  package = Package.create(title: "Venus Family",
                     description: Faker::Lorem.paragraph,
                           price: rand(3..9) + 1000,
                           image: File.new("#{Rails.root}/app/assets/images/planet_venus_2.jpg"),
                  destination_id: 2,
                          status: 0)
  puts "Created #{package.title}, price: #{package.price}"
  puts "Status: #{package.status}"
  package = Package.create(title: "Venus Luxury",
                     description: Faker::Lorem.paragraph,
                           price: rand(3..9) + 1000,
                           image: File.new("#{Rails.root}/app/assets/images/planet_venus_3.jpg"),
                  destination_id: 2,
                          status: 0)
  puts "Created #{package.title}, price: #{package.price}"
  puts "Status: #{package.status}"
  package = Package.create(title: "Venus Weekend",
                     description: Faker::Lorem.paragraph,
                           price: rand(3..9) + 1000,
                           image: File.new("#{Rails.root}/app/assets/images/planet_venus_4.jpg"),
                  destination_id: 2,
                          status: 0)
  puts "Created #{package.title}, price: #{package.price}"
  puts "Status: #{package.status}"
  package = Package.create(title: "Venus Service Trip",
                     description: Faker::Lorem.paragraph,
                           price: rand(3..9) + 1000,
                           image: File.new("#{Rails.root}/app/assets/images/planet_venus_5.jpg"),
                  destination_id: 2,
                          status: 0)
  puts "Created #{package.title}, price: #{package.price}"
  puts "Status: #{package.status}\n\n"


  Destination.create(planet: "Moon")


  package = Package.create(title: "Moon Adventure",
                     description: Faker::Lorem.paragraph,
                           price: rand(3..9) + 1000,
                           image: File.new("#{Rails.root}/app/assets/images/planet_moon_1.jpg"),
                  destination_id: 3,
                          status: 0)
  puts "Created #{package.title}, price: #{package.price}"
  puts "Status: #{package.status}"
  package = Package.create(title: "Moon Family",
                     description: Faker::Lorem.paragraph,
                           price: rand(3..9) + 1000,
                           image: File.new("#{Rails.root}/app/assets/images/planet_moon_2.jpg"),
                  destination_id: 3,
                          status: 0)
  puts "Created #{package.title}, price: #{package.price}"
  puts "Status: #{package.status}"
  package = Package.create(title: "Moon Luxury",
                     description: Faker::Lorem.paragraph,
                           price: rand(3..9) + 1000,
                           image: File.new("#{Rails.root}/app/assets/images/planet_moon_3.jpg"),
                  destination_id: 3,
                          status: 0)
  puts "Created #{package.title}, price: #{package.price}"
  puts "Status: #{package.status}"
  package = Package.create(title: "Moon Weekend",
                     description: Faker::Lorem.paragraph,
                           price: rand(3..9) + 1000,
                           image: File.new("#{Rails.root}/app/assets/images/planet_moon_4.jpg"),
                  destination_id: 3,
                          status: 0)
  puts "Created #{package.title}, price: #{package.price}"
  puts "Status: #{package.status}"
  package = Package.create(title: "Moon Service Trip",
                     description: Faker::Lorem.paragraph,
                           price: rand(3..9) + 1000,
                           image: File.new("#{Rails.root}/app/assets/images/planet_moon_5.jpg"),
                  destination_id: 3,
                          status: 0)
  puts "Created #{package.title}, price: #{package.price}"
  puts "Status: #{package.status}\n\n"

  #create one sold out package
  package = Package.create(title: "Moon Popular Trip",
                     description: Faker::Lorem.paragraph,
                           price: rand(3..9) + 1000,
                           image: File.new("#{Rails.root}/app/assets/images/sold_out.jpg"),
                  destination_id: 3,
                          status: 1)
  puts "Created #{package.title}, price: #{package.price}"
  puts "Status: #{package.status}\n\n"

  #create 3 default users

  user = User.create(username: "default_user_1",
                        email: "default_user_1.email.com",
                     password: "password",
        password_confirmation: "password")
  puts "Created #{user.username}, role: #{user.role}"
  user = User.create(username: "default_user_2",
                        email: "default_user_2.email.com",
                     password: "password",
        password_confirmation: "password")
  puts "Created #{user.username}, role: #{user.role}"
  user = User.create(username: "default_user_3",
                        email: "default_user_3.email.com",
                     password: "password",
        password_confirmation: "password")
  puts "Created #{user.username}, role: #{user.role}\n\n"

  #create 3 admins

  admin = User.create(username: "jeneve",
                         email: "jeneve.email.com",
                      password: "password",
         password_confirmation: "password",
                          role: 1)
  puts "Created #{admin.username}, role: #{admin.role}"
  admin = User.create(username: "jon",
                         email: "jon.email.com",
                      password: "password",
         password_confirmation: "password",
                          role: 1)
  puts "Created #{admin.username}, role: #{admin.role}"
  admin = User.create(username: "marina",
                         email: "marina.email.com",
                      password: "password",
         password_confirmation: "password",
                          role: 1)
  puts "Created #{admin.username}, role: #{admin.role}\n\n"

  #create 3 orders per default user, containing 3 packages each

  order = Order.create(user_id: 1, total_cost: 2000)
  OrderPackage.create(user_id: 1, order_id: 1, package_id: 1)
  OrderPackage.create(user_id: 1, order_id: 1, package_id: 2)
  OrderPackage.create(user_id: 1, order_id: 1, package_id: 3)
  puts "Created order \# #{order.id}"
  puts "containing #{OrderPackage.where(order_id: order.id).count} packages"
  puts "for #{order.user.username}"

  order = Order.create(user_id: 1, total_cost: 1500)
  OrderPackage.create(user_id: 1, order_id: 2, package_id: 1)
  OrderPackage.create(user_id: 1, order_id: 2, package_id: 2)
  OrderPackage.create(user_id: 1, order_id: 2, package_id: 3)
  puts "Created order \# #{order.id}"
  puts "containing #{OrderPackage.where(order_id: order.id).count} packages"
  puts "for #{order.user.username}"

  order = Order.create(user_id: 1, total_cost: 1000)
  OrderPackage.create(user_id: 1, order_id: 3, package_id: 1)
  OrderPackage.create(user_id: 1, order_id: 3, package_id: 2)
  OrderPackage.create(user_id: 1, order_id: 3, package_id: 3)
  puts "Created order \# #{order.id}"
  puts "containing #{OrderPackage.where(order_id: order.id).count} packages"
  puts "for #{order.user.username}"

  order = Order.create(user_id: 2, total_cost: 1000)
  OrderPackage.create(user_id: 2, order_id: 4, package_id: 3)
  OrderPackage.create(user_id: 2, order_id: 4, package_id: 4)
  OrderPackage.create(user_id: 2, order_id: 4, package_id: 5)
  puts "Created order \# #{order.id}"
  puts "containing #{OrderPackage.where(order_id: order.id).count} packages"
  puts "for #{order.user.username}"

  order = Order.create(user_id: 2, total_cost: 1000)
  OrderPackage.create(user_id: 2, order_id: 5, package_id: 3)
  OrderPackage.create(user_id: 2, order_id: 5, package_id: 4)
  OrderPackage.create(user_id: 2, order_id: 5, package_id: 5)
  puts "Created order \# #{order.id}"
  puts "containing #{OrderPackage.where(order_id: order.id).count} packages"
  puts "for #{order.user.username}"

  order = Order.create(user_id: 2, total_cost: 3000)
  OrderPackage.create(user_id: 2, order_id: 6, package_id: 3)
  OrderPackage.create(user_id: 2, order_id: 6, package_id: 4)
  OrderPackage.create(user_id: 2, order_id: 6, package_id: 5)
  puts "Created order \# #{order.id}"
  puts "containing #{OrderPackage.where(order_id: order.id).count} packages"
  puts "for #{order.user.username}"

  order = Order.create(user_id: 3, total_cost: 5000)
  OrderPackage.create(user_id: 3, order_id: 7, package_id: 5)
  OrderPackage.create(user_id: 3, order_id: 7, package_id: 6)
  OrderPackage.create(user_id: 3, order_id: 7, package_id: 7)
  puts "Created order \# #{order.id}"
  puts "containing #{OrderPackage.where(order_id: order.id).count} packages"
  puts "for #{order.user.username}"

  order = Order.create(user_id: 3, total_cost: 1000)
  OrderPackage.create(user_id: 3, order_id: 8, package_id: 5)
  OrderPackage.create(user_id: 3, order_id: 8, package_id: 6)
  OrderPackage.create(user_id: 3, order_id: 8, package_id: 7)
  puts "Created order \# #{order.id}"
  puts "containing #{OrderPackage.where(order_id: order.id).count} packages"
  puts "for #{order.user.username}"


  order = Order.create(user_id: 3, total_cost: 5000)
  OrderPackage.create(user_id: 3, order_id: 9, package_id: 5)
  OrderPackage.create(user_id: 3, order_id: 9, package_id: 6)
  OrderPackage.create(user_id: 3, order_id: 9, package_id: 7)
  puts "Created order \# #{order.id}"
  puts "containing #{OrderPackage.where(order_id: order.id).count} packages"
  puts "for #{order.user.username}"
