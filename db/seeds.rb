
puts "Deleting old data..."
User.destroy_all
City.destroy_all
Review.destroy_all

puts "Seeding games..."

# run a loop 10 times
10.times do
  # create a reviewer with random data
  User.create(
    name: Faker::Name.unique.name,
    bio: Faker::Lorem.sentences
  )

  City.create(
    name: Faker::Address.unique.city
    minimum_wage: rand(10..100),
    currency: Faker::Currency.unique.name,
    country: Faker::Address.unique.country,
    employment_rate: rand(0..100)
  )

  Review.create(
    comment: Faker::Lorem.sentences,
    traffic: rand(1..5),
    night_life: rand(1..5),
    safety: rand(1..5), 
    friendly_to_foreigner: rand(1..5),
    places_to_work_from: rand(1..5),
    quality_of_internet: rand(1..5),
    quality_of_healthcare: rand(1..5),
    city_id: rand(1..10),
    user_id: rand(1..10)
  )
end

puts "Done seeding!"