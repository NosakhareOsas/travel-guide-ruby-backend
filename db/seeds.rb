
puts "Deleting old data..."
User.destroy_all
City.destroy_all
Review.destroy_all

city_image = [
  "https://assets.weforum.org/global_future_council/image/xALg-7b0WN5aLOY6aejbKW3NepG-PEipzKnEuyS8ZlI.jpeg",
  "https://cdn.unenvironment.org/2020-02/sustainable-cities.jpg",
  "https://images.adsttc.com/media/images/6008/934c/63c0/172f/0100/000f/newsletter/shutterstock_1850845516.jpg?1611174726",
  "https://www.infoplease.com/sites/infoplease.com/files/inline-images/NYC%20Skyline.jpg",
  "https://www.hks.harvard.edu/sites/default/files/2017-05/1%20Cities%20daybreak_1280x720%20%281%29.jpg",
  "https://assets.weforum.org/article/image/xbpyxANr-Dprjw6xajGpteJ5JnRcu4P6iJgpkHMwoMY.jpg",
  "https://imagesvc.meredithcorp.io/v3/jumpstartpure/image?url=https://cf-images.us-east-1.prod.boltdns.net/v1/static/3281700261001/8d2ce2a2-657a-4c88-ae6e-46a573aff6aa/310adbae-33e6-4fd3-9123-5f5461006483/1280x720/match/image.jpg&w=640&h=360&q=90&c=cc",
  "https://www.usnews.com/object/image/00000165-b473-db61-af7f-f77fc3a90000/180907bc-largestcitiesbeijing-editorial.jpg?update-time=1536336232056&size=responsive640"
]

puts "Seeding in progress..."

# run a loop 10 times
city_image.length.times do |i|
  # create a reviewer with random data
  User.create(
    name: Faker::Name.unique.name,
    bio: Faker::Lorem.sentence
  )

  City.create(
    name: Faker::Address.unique.city,
    minimum_wage: rand(10..100),
    currency: Faker::Currency.unique.name,
    country: Faker::Address.unique.country,
    employment_rate: rand(1..100),
    crime_rate: rand(1..100),
    image: city_image[i-1]
  )

  Review.create(
    comment: Faker::Lorem.sentence,
    traffic: rand(1..5),
    night_life: rand(1..5), 
    friendly_to_foreigner: rand(1..5),
    places_to_work_from: rand(1..5),
    quality_of_internet: rand(1..5),
    quality_of_healthcare: rand(1..5),
    city_id: rand(1..10),
    user_id: rand(1..10)
  )
end

puts "Done seeding!"