

  Destination.create(planet: "Mars")


  package = Package.create(title: "Mars Adventure",
                     description: "It's a God-awful small affair
                                   To the girl with the mousy hair
                                   But her mummy is yelling no
                                   And her daddy has told her to go
                                   But her friend is nowhere to be seen
                                   Now she walks through her sunken dream
                                   To the seat with the clearest view",
                           price: rand(3..9) + 1000,
                           image: File.new("#{Rails.root}/app/assets/images/planet_mars_1.jpg"),
                  destination_id: 1,
                          status: 0)
  puts "Created #{package.title}, price: #{package.price}"
  puts "Status: #{package.status}"
  package = Package.create(title: "Mars Family",
                     description: "And she's hooked to the silver screen,
                                   But the film is a saddening bore
                                   For she's lived it ten times or more
                                   She could spit in the eyes of fools
                                   As they ask her to focus on
                                   Sailors fighting in the dance hall
                                   Oh man look at those cavemen go",
                           price: rand(3..9) + 1000,
                           image: File.new("#{Rails.root}/app/assets/images/planet_mars_2.jpg"),
                  destination_id: 1,
                          status: 0)
  puts "Created #{package.title}, price: #{package.price}"
  puts "Status: #{package.status}"
  package = Package.create(title: "Mars Luxury",
                     description: "It's the freakiest show
                                   Take a look at the lawman
                                   Beating up the wrong guy
                                   Oh man wonder if he'll ever know
                                   He's in the best selling show
                                   Is there life on Mars?",
                           price: rand(3..9) + 1000,
                           image: File.new("#{Rails.root}/app/assets/images/planet_mars_3.jpg"),
                  destination_id: 1,
                          status: 0)
  puts "Created #{package.title}, price: #{package.price}"
  puts "Status: #{package.status}"
  package = Package.create(title: "Mars Weekend",
                     description: "It's on America's tortured brow
                                   That Mickey Mouse has grown up a cow
                                   Now the workers have struck for fame
                                   'Cause Lennon's on sale again
                                   See the mice in their million hordes
                                   From Ibiza to the Norfolk Broads",
                           price: rand(3..9) + 1000,
                           image: File.new("#{Rails.root}/app/assets/images/planet_mars_4.jpg"),
                  destination_id: 1,
                          status: 0)
  puts "Created #{package.title}, price: #{package.price}"
  puts "Status: #{package.status}"
  package = Package.create(title: "Mars Service Trip",
                     description: "To my mother, my dog, and clowns
                                   But the film is a saddening bore
                                   'Cause I wrote it ten times or more
                                   It's about to be writ again
                                   As I ask you to focus on3
                                   Sailors fighting in the dance hall",
                           price: rand(3..9) + 1000,
                           image: File.new("#{Rails.root}/app/assets/images/planet_mars_5.jpg"),
                  destination_id: 1,
                          status: 0)
  puts "Created #{package.title}, price: #{package.price}"
  puts "Status: #{package.status}\n\n"



  Destination.create(planet: "Venus")


  package = Package.create(title: "Venus Adventure",
                     description: "Ground Control to Major Tom
                                   Ground Control to Major Tom
                                   Take your protein pills and put your helmet on
                                   Ground Control to Major Tom (ten, nine, eight, seven, six)
                                   Commencing countdown, engines on (five, four, three)",
                           price: rand(3..9) + 1000,
                           image: File.new("#{Rails.root}/app/assets/images/planet_venus_1.jpg"),
                  destination_id: 2,
                          status: 0)
  puts "Created #{package.title}, price: #{package.price}"
  puts "Status: #{package.status}"
  package = Package.create(title: "Venus Family",
                     description: "Check ignition and may God's love be with you (two, one, liftoff)
                                   This is Ground Control to Major Tom
                                   You've really made the grade
                                   And the papers want to know whose shirts you wear
                                   Now it's time to leave the capsule if you dare",
                           price: rand(3..9) + 1000,
                           image: File.new("#{Rails.root}/app/assets/images/planet_venus_2.jpg"),
                  destination_id: 2,
                          status: 0)
  puts "Created #{package.title}, price: #{package.price}"
  puts "Status: #{package.status}"
  package = Package.create(title: "Venus Luxury",
                     description: "This is Major Tom to Ground Control
                                   I'm stepping through the door
                                   And I'm floating in a most peculiar way
                                   And the stars look very different today
                                   For here
                                   Am I sitting in a tin can",
                           price: rand(3..9) + 1000,
                           image: File.new("#{Rails.root}/app/assets/images/planet_venus_3.jpg"),
                  destination_id: 2,
                          status: 0)
  puts "Created #{package.title}, price: #{package.price}"
  puts "Status: #{package.status}"
  package = Package.create(title: "Venus Weekend",
                     description: "Far above the world
                                   Planet Earth is blue
                                   And there's nothing I can do
                                   Though I'm past one hundred thousand miles
                                   I'm feeling very still
                                   And I think my spaceship knows which way to go",
                           price: rand(3..9) + 1000,
                           image: File.new("#{Rails.root}/app/assets/images/planet_venus_4.jpg"),
                  destination_id: 2,
                          status: 0)
  puts "Created #{package.title}, price: #{package.price}"
  puts "Status: #{package.status}"
  package = Package.create(title: "Venus Service Trip",
                     description: "Tell my wife I love her very much she knows
                                   Ground Control to Major Tom
                                   Your circuit's dead, there's something wrong
                                   Can you hear me, Major Tom?
                                   Can you hear me, Major Tom?",
                           price: rand(3..9) + 1000,
                           image: File.new("#{Rails.root}/app/assets/images/planet_venus_5.jpg"),
                  destination_id: 2,
                          status: 0)
  puts "Created #{package.title}, price: #{package.price}"
  puts "Status: #{package.status}\n\n"


  Destination.create(planet: "Moon")


  package = Package.create(title: "Moon Adventure",
                     description: "There's a starman waiting in the sky
                                   He'd like to come and meet us
                                   But he thinks he'd blow our minds
                                   There's a starman waiting in the sky
                                   He's told us not to blow it
                                   'Cause he knows it's all worthwhile",
                           price: rand(3..9) + 1000,
                           image: File.new("#{Rails.root}/app/assets/images/planet_moon_1.jpg"),
                  destination_id: 3,
                          status: 0)
  puts "Created #{package.title}, price: #{package.price}"
  puts "Status: #{package.status}"
  package = Package.create(title: "Moon Family",
                     description: "He told me
                                   Let the children lose it
                                   Let the children use it
                                   Let all the children boogie
                                   Starman waiting in the sky
                                   He'd like to come and meet us
                                   But he thinks he'd blow our minds",
                           price: rand(3..9) + 1000,
                           image: File.new("#{Rails.root}/app/assets/images/planet_moon_2.jpg"),
                  destination_id: 3,
                          status: 0)
  puts "Created #{package.title}, price: #{package.price}"
  puts "Status: #{package.status}"
  package = Package.create(title: "Moon Luxury",
                     description: "There's a starman waiting in the sky
                                   He'd like to come and meet us
                                   But he thinks he'd blow our minds
                                   There's a starman waiting in the sky
                                   He's told us not to blow it
                                   'Cause he knows it's all worthwhile",
                           price: rand(3..9) + 1000,
                           image: File.new("#{Rails.root}/app/assets/images/planet_moon_3.jpg"),
                  destination_id: 3,
                          status: 0)
  puts "Created #{package.title}, price: #{package.price}"
  puts "Status: #{package.status}"
  package = Package.create(title: "Moon Weekend",
                     description: "Ground Control to Major Tom
                                   Ground Control to Major Tom
                                   Take your protein pills and put your helmet on
                                   Ground Control to Major Tom (ten, nine, eight, seven, six)
                                   Commencing countdown, engines on (five, four, three)",
                           price: rand(3..9) + 1000,
                           image: File.new("#{Rails.root}/app/assets/images/planet_moon_4.jpg"),
                  destination_id: 3,
                          status: 0)
  puts "Created #{package.title}, price: #{package.price}"
  puts "Status: #{package.status}"
  package = Package.create(title: "Moon Service Trip",
                     description: "Check ignition and may God's love be with you (two, one, liftoff)
                                   This is Ground Control to Major Tom
                                   You've really made the grade
                                   And the papers want to know whose shirts you wear
                                   Now it's time to leave the capsule if you dare",
                           price: rand(3..9) + 1000,
                           image: File.new("#{Rails.root}/app/assets/images/planet_moon_5.jpg"),
                  destination_id: 3,
                          status: 0)
  puts "Created #{package.title}, price: #{package.price}"
  puts "Status: #{package.status}\n\n"

  #create one sold out package
  package = Package.create(title: "Moon Popular Trip",
                     description: "Far above the world
                                   Planet Earth is blue
                                   And there's nothing I can do
                                   Though I'm past one hundred thousand miles
                                   I'm feeling very still
                                   And I think my spaceship knows which way to go",
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
