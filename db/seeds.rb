# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create([
    {
        name: "Adao Natalino",
        username: "adao",
        password: "123456",
        city: "London",
        email: "sansonov@gmail.com",
        avatar: "http://github.com/AdaoNatalino.png",
        bio: "Software Engineer",
    },
    {
        name: "Larissa Diz",
        username: "larissa",
        password: "123456",
        city: "London",
        email: "larissa_diz@hotmail.com",
        avatar: "",
        bio: "Psychologist",
    },
    {
        name: "Charlie Payne",
        username: "charlie",
        password: "123456",
        city: "London",
        email: "ccharliepayne1993@hotmail.co.uk",
        avatar: "https://avatars2.githubusercontent.com/u/37950260?v=4",
        bio: "Software Engineer",
    },
    {
        name: "Gbenga Ojo-Aromokudu",
        username: "gbenga",
        password: "123456",
        city: "London",
        email: "ggojoaromokudu@gmail.com",
        avatar: "https://avatars3.githubusercontent.com/u/57733903?v=4",
        bio: "Software Engineer",
    },
    {
        name: "Daniel Kaczmarczyk",
        username: "dan",
        password: "123456",
        city: "London",
        email: "ddanielkaczmarczyk2@gmail.com",
        avatar: "https://avatars2.githubusercontent.com/u/20131636?v=4",
        bio: "Software Engineer",
    },
    {
        name: "Douglas Marin Barco",
        username: "douglas",
        password: "123456",
        city: "London",
        email: "ddouglas@dobuilding.co.uk",
        avatar: "https://avatars2.githubusercontent.com/u/20131636?v=4",
        bio: "Software Engineer",
    }
])

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
        user_id: 2
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
        user_id: 2
    },
    {
        name: "Super NES", 
        category_id: 5,
        description: "I didn't wanna to get rid of this, but I need to",
        image: "https://upload.wikimedia.org/wikipedia/commons/thumb/3/31/SNES-Mod1-Console-Set.jpg/250px-SNES-Mod1-Console-Set.jpg",
        condition: "old",
        user_id: 5
    },
    {
        name: "Super Barbecue Grill", 
        category_id: 6,
        description: "I got this as a gift from a friend, but I am vegan...",
        image: "https://www.appliancesdirect.co.uk/Images/IQBQCAMERICAN_5_Supersize.jpg?v=81",
        condition: "new",
        user_id: 3
    },
    {
        name: "Multi Gym Home", 
        category_id: 9,
        description: "I have this at home, but I started learn how to code, so I don't have life anymore.",
        image: "https://images-na.ssl-images-amazon.com/images/I/71X3sbEt55L._AC_SL1500_.jpg",
        condition: "new",
        user_id: 4
    },
    {
        name: "Halloween Costume", 
        category_id: 7,
        description: "This is my favorite halloween costume, but I started scaring kids too much.",
        image: "https://cdn.shopify.com/s/files/1/0012/9282/8781/products/DOCTORKIDS2.JPG?v=1538483468",
        condition: "new",
        user_id: 6
    },
    {
        name: "Corolla Cross", 
        category_id: 1,
        description: "I just wanna get an sport convertible one",
        image: "https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/20200709-01-02-1594303120.jpg?crop=0.859xw:0.694xh;0.141xw,0.267xh&resize=1200:*",
        condition: "new",
        user_id: 5
    }

])

