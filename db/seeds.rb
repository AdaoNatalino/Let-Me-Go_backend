# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create(
    {
        name: "Adao Natalino",
        username: "adao",
        password: "123456",
        city: "London",
        email: "sansonov@gmail.com",
        avatar: "http://github.com/AdaoNatalino.png",
        bio: "Software Engineer Student",
    }
)


Item.create([
    {
        name: "Super Rusty Datsun", 
        group: "autos",
        description: "It’s a not a rust-bucket, that would require structural integrity. Its been devolving in the backyard since 2008, and has not been registered since 2009. As if it knows how little hope it has, the thing has tried to bury itself many times - death by bogging. Its only inhabitants are a family of possibly lethal spiders and rodent gnawing has been noted on what little upholstery remains. ",
        image: "https://farm8.staticflickr.com/7039/13779672455_77f45a6f47_b.jpg",
        condition: "used",
        user_id: 1
    },
    {
        name:  "MacBook Pro", 
        group: "electronics",
        description: "Just bought this laptop and I just can't get used to it!",
        image: "https://cdn.pocket-lint.com/r/s/970x/assets/images/152137-laptops-review-apple-macbook-pro-2020-review-image1-pbzm4ejvvs-jpg.webp",
        condition: "new",
        user_id: 1
    },
    {
        name: "Nokia", 
        group: "electronics",
        description: "Do you wanna have signal everywhere you go?",
        image: "https://mercado.etc.br/wp-content/uploads/2017/02/nokia.jpg",
        condition: "used",
        user_id: 1
    },
    {
        name: "Portable AC", 
        group: "electric",
        description: "I don't need this AC because I'm moving to Iceland",
        image: "https://mobilityscooterhirebenidorm.com/wp-content/uploads/2018/09/Portable-Aircon-units-Hire-Benidorm.jpg",
        condition: "new",
        user_id: 1
    }
])