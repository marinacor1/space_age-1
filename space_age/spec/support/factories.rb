FactoryGirl.define do


  sequence :title, ["explore", "basic", "luxury",
                    "adventure", "family"].cycle do |title|
                    "#{title} package"
                  end

  sequence :price, [1000, 2000, 3000, 4000].cycle do |price|
                  price
                end

  sequence :description do |n|
    "description#{n}"
  end

  sequence :image do |n|
    Faker::Avatar.image("25x25")
  end

  factory :destination do
    planet "Mars"
  end

  factory :package do
    title
    price
    description
    image
    destination
  end

end
