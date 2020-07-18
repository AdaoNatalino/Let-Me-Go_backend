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

Category.create([
    {
        title: "Autos",
        url: "https://www.focus2move.com/wp-content/uploads/2020/05/Seat-Cupra_Leon_Competicion-2020.jpg"
    },
    {
        title: 'Electronics',
        url: 'https://static.kent.ac.uk/nexus/ems/960.jpg'
    },
    {
        title: "Electric",
        url: 'https://i.ytimg.com/vi/NUUeGianTKM/maxresdefault.jpg'
    },
    {
        title: "Furniture",
        url: 'https://www.borgonovo1930.com/e/images/home/fimar-mobili-2.jpg'
    },
    {
        title: "Games",
        url: 'https://images.pushsquare.com/d258d2ab5b78a/the-last-of-us-2-guide.original.jpg'
    },
    {
        title: "Home and Kitchen",
        url:  'https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/blakes-london-kitchen-1579780869.jpg?crop=0.607xw:0.933xh;0.295xw,0.0394xh&resize=640:*'
    },
    {
        title: "Clothing",
        url: 'https://www.fairwayfurniture.co.uk/images/products/standard/13735.jpg'
    },
    {
        title: "Health",
        url: 'https://www.expatica.com/app/uploads/sites/2/2019/11/Health-Insurance-Quotes-1920x1080.jpg'
    },
    {
        title: "Sports",
        url: 'https://i2-prod.belfastlive.co.uk/incoming/article18292338.ece/ALTERNATES/s1200d/0_Seasonal-Sports-Equipment-Storage-1024x668.jpg'
    }

])

Item.create([
    {
        name: "Super Rusty Datsun", 
        category_id: 1,
        description: "It’s a not a rust-bucket, that would require structural integrity. Its been devolving in the backyard since 2008, and has not been registered since 2009. As if it knows how little hope it has, the thing has tried to bury itself many times - death by bogging. Its only inhabitants are a family of possibly lethal spiders and rodent gnawing has been noted on what little upholstery remains. ",
        image: "https://farm8.staticflickr.com/7039/13779672455_77f45a6f47_b.jpg",
        condition: "used",
        user_id: 1
    },
    {
        name:  "MacBook Pro", 
        category_id: 2,
        description: "Just bought this laptop and I just can't get used to it!",
        image: "https://cdn.pocket-lint.com/r/s/970x/assets/images/152137-laptops-review-apple-macbook-pro-2020-review-image1-pbzm4ejvvs-jpg.webp",
        condition: "new",
        user_id: 1
    },
    {
        name: "Nokia", 
        category_id: 2,
        description: "Do you wanna have signal everywhere you go?",
        image: "https://mercado.etc.br/wp-content/uploads/2017/02/nokia.jpg",
        condition: "used",
        user_id: 1
    },
    {
        name: "Portable AC", 
        category_id: 3,
        description: "I don't need this AC because I'm moving to Iceland",
        image: "https://mobilityscooterhirebenidorm.com/wp-content/uploads/2018/09/Portable-Aircon-units-Hire-Benidorm.jpg",
        condition: "new",
        user_id: 1
    }
])