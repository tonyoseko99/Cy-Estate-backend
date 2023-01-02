puts "...seeding the database..."

# use faker to create the data
10.times do
    House.create(
        title: Faker::Address.community,
        address: Faker::Address.street_address,
        price: Faker::Commerce.price,
        bedrooms: Faker::Number.between(from: 1, to: 2),
        description: Faker::Lorem.paragraph,
        image: Faker::LoremFlickr.image(size: "300x300", search_terms: ['house'])
    )
end

# create two users withour using faker
User.create(username: "John", email: "j@test.com", password: "123")
User.create(username: "Jane", email: "jane@test.com", password: "123")

# Create a superuser
superuser = Superuser.create(email: "superuser@example.com", password: "password", role: "admin")

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
        location: Faker::Address.community,
        price_range: Faker::Number.between(from: 100000, to: 1000000)
    )
end

Cart.create([
    { user_id: 1, total_price: 20000 },
    { user_id: 2, total_price: 30000 },
    { user_id: 3, total_price: 40000 },
    { user_id: 4, total_price: 50000 },
    { user_id: 5, total_price: 60000 }
])

puts "done seeding the database..."