puts "...seeding the database..."

# use faker to create the data
10.times do
    House.create(
        address: Faker::Address.street_address,
        price: Faker::Commerce.price,
        bedrooms: Faker::Number.between(from: 1, to: 5),
        bathrooms: Faker::Number.between(from: 1, to: 5),
        image: Faker::LoremFlickr.image(size: "300x300", search_terms: ['house'])
    )
end

# create two users withour using faker
User.create(name: "John", email: "j@test.com", password: "123")
User.create(name: "Jane", email: "jane@test.com", password: "123")

# create 5 reviews using faker
5.times do
    Review.create(
        user_id: Faker::Number.between(from: 1, to: 5),
        house_id: Faker::Number.between(from: 1, to: 10),
        text: Faker::Lorem.paragraph
    )
end

# create 5 favorites using faker
5.times do
    Favorite.create(
        user_id: Faker::Number.between(from: 1, to: 5),
        house_id: Faker::Number.between(from: 1, to: 10)
    )
end

# create 5 searches using faker
5.times do
    Search.create(
        location: Faker::Address.city,
        price_range: Faker::Commerce.price
    )
end

puts "done seeding the database..."