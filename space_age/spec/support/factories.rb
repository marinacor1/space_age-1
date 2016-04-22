FactoryGirl.define do

  sequence :title, ["explore", "basic", "luxury",
                    "adventure", "family"].cycle do |title|
                    "#{title} package"
                  end

  sequence :price, [1000, 2000, 3000, 4000].cycle do |price|
                  price
                end
  sequence :planet, ["Mars", "Venus", "Jupiter"].cycle do |planet|
                  planet
                end

  sequence :username do |n|
    "User#{n}"
  end

  sequence :email do |n|
    "email#{n}"
  end


  sequence :description do |n|
    "description#{n}"
  end

  sequence :image do |n|
    Faker::Avatar.image("25x2#{n}")
  end

  factory :destination do
    planet
  end

  factory :package do
    title
    price
    description
    image
    destination
  end

  factory :user do
    username
    email
    password "password"
    password_confirmation "password"
  end
end
