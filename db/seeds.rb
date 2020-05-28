# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

UserBookReview.destroy_all
Book.destroy_all
Author.destroy_all
Genre.destroy_all
User.destroy_all




100.times do
    Author.create!({
        name: Faker::Book.author
    })
end

15.times do
    Genre.create!({
        name: Faker::Book.genre
    })
end

300.times do
    Book.create!({
        title: Faker::Book.title,
        author_id: Author.all.sample.id,
        genre_id: Genre.all.sample.id
    })
end

75.times do 
    User.create!({
        name: Faker::Name.first_name,
        password: Faker::Hipster.word
    })
end

150.times do
    UserBookReview.create!({
        review: Faker::Hipster.paragraph,
        rating: rand(1..10),
        user_id: User.all.sample.id,
        book_id: Book.all.sample.id
    })
end