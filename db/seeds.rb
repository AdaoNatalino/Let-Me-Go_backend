# Item.destroy_all
# User.destroy_all
# Category.destroy_all


User.create([
    {
        name: "Adao Natalino",
        username: "adao",
        password: ENV['personal'],
        city: "London",
        email: "sansonov@gmail.com",
        avatar: "http://github.com/AdaoNatalino.png",
        bio: "Software Engineer",
    },
    {
        name: "Larissa Diz",
        username: "larissa",
        password: ENV['personal'],
        city: "London",
        email: "larissa_diz@hotmail.com",
        avatar: "",
        bio: "Psychologist",
    },
    {
        name: "Charlie Payne",
        username: "charlie",
        password: ENV['personal'],
        city: "London",
        email: "charliepayne1993@hotmail.co.uk1",
        avatar: "https://avatars2.githubusercontent.com/u/37950260?v=4",
        bio: "Software Engineer",
    },
    {
        name: "Douglas Barco",
        username: "douglas",
        password: ENV['personal'],
        city: "London",
        email: "douglas@dobuilding.co.uk1",
        avatar: "",
        bio: "Software Engineer",
    },
    {
        name: "Daniel Kaczmarczyk",
        username: "dan",
        password: ENV['personal'],
        city: "London",
        email: "danielkaczmarczyk2@gmail.com1",
        avatar: "https://avatars2.githubusercontent.com/u/20131636?v=4",
        bio: "Software Engineer",
    },
    {
        name: "Gbenga Ojo-Aromokudu",
        username: "gbenga",
        password: ENV['personal'],
        city: "London",
        email: "gojoaromokudu@gmail.com1",
        avatar: "https://avatars3.githubusercontent.com/u/57733903?v=4",
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
        name: "Halloween Costume", 
        category_id: 7,
        description: "I like this costume, but I am scaring the kids too much!",
        image: "https://cdn.shopify.com/s/files/1/0012/9282/8781/products/DOCTORKIDS2.JPG?v=1538483468",
        condition: "used",
        user_id: 4
    },
    {
        name: "Home Gym", 
        category_id: 8,
        description: "I started a bootcamp, so I don't have time to work out anymore",
        image: "https://images-na.ssl-images-amazon.com/images/I/71X3sbEt55L._AC_SL1500_.jpg",
        condition: "new",
        user_id: 4
    },
    {
        name: "Super Grill", 
        category_id: 6,
        description: "I got it from a friend as a gift, but I am vegan...",
        image: "https://www.appliancesdirect.co.uk/Images/IQBQCAMERICAN_5_Supersize.jpg?v=81",
        condition: "new",
        user_id: 3
    },
    {
        name: "Super NES", 
        category_id: 5,
        description: "It was my favorite for a long time...",
        image: "https://upload.wikimedia.org/wikipedia/commons/thumb/3/31/SNES-Mod1-Console-Set.jpg/250px-SNES-Mod1-Console-Set.jpg",
        condition: "used",
        user_id: 5
    },
    {
        name: "Travel Bag", 
        category_id: 6,
        description: "Places will start to open again, you should be prepared to travel!",
        image: "https://powerkiteshop.com/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/d/u/duotone-travel-bag-l.jpg",
        condition: "new",
        user_id: 4
    },
    {
        name: "Victorian Wooden Piano", 
        category_id: 6,
        description: "I just don't play anymore",
        image: "https://www.renderhub.com/glenfx/old-victorian-wooden-upright-piano-low-poly/old-victorian-wooden-upright-piano-low-poly-01.jpg",
        condition: "used",
        user_id: 5
    },
    {
        name: "Second Screen", 
        category_id: 2,
        description: "Ideal as a second screen for coding.",
        image: "https://www.techadvisor.co.uk/cmsdata/features/3674679/best_monitors_to_use_as_a_second_screen.jpg",
        condition: "used",
        user_id: 6
    },
    {
        name: "Really comfortable Inflatable Chair", 
        category_id: 4,
        description: "Ideal for traveling, parks or just to chill at home.",
        image: "https://images-na.ssl-images-amazon.com/images/I/311j1uOTpbL._AC_SY450_.jpg",
        condition: "used",
        user_id: 6
    },
    {
        name: "Super Vacuum Turbo", 
        category_id: 3,
        description: "Keep your house clean very easily",
        image: "https://cdn.bmstores.co.uk/images/hpcProductImage/imgSource/356438-goodmans-turbomax-vac-2.jpg",
        condition: "new",
        user_id: 2
    },
    {
        name: "Professional Dunlop Indoor Tennis Table", 
        category_id: 9,
        description: "Have fun with friends. Really good way to work out too.",
        image: "https://www.bishopsport.co.uk/user/products/large/TT1430-BE.jpg",
        condition: "used",
        user_id: 1
    },
    {
        name: "Fishing Rod Kit", 
        category_id: 9,
        description: "Great to spend a day relaxing and fishing",
        image: "https://fishdeal.co.uk/media/d0797577f8b60205.jpg",
        condition: "used",
        user_id: 4
    },
    {
        name: "Super Beetle VW 1969", 
        category_id: 1,
        description: "It was passed from generations in my family, but I need to get over it now.",
        image: "https://i.pinimg.com/originals/ca/19/b2/ca19b22c33321e3fb2ccaf98689d2f80.jpg",
        condition: "Collection Edition",
        user_id: 4
    },
    {
        name: "Fiat 147 1982", 
        category_id: 1,
        description: "Was a three-door hatchback compact car produced by Fiat in the Brazilian state of Minas Gerais from autumn 1976 until 1987",
        image: "https://s30.wheelsage.org/format/picture/picture-preview-large/fiat/147/autowp.ru_fiat_147_rallye_3.jpg",
        condition: "Collection Edition",
        user_id: 4
    },
    {
        name: "Gol VW 94", 
        category_id: 1,
        description: "Gol was the best-selling car in Brazil for 27 consecutive years, from 1987 to 2014",
        image: "https://live.staticflickr.com/789/40645361095_a59b394db2_b.jpg",
        condition: "Collection Edition",
        user_id: 4
    },
    {
        name: "Sony TV 14'", 
        category_id: 2,
        description: "Black and White",
        image: "https://loveincorporated.blob.core.windows.net/contentimages/gallery/9ef99ebd-ea53-4216-862e-bfcf86c7ebaa-60s_TV.jpg",
        condition: "",
        user_id: 5
    },
    {
        name: "Multek Pro Camera", 
        category_id: 2,
        description: "Ideal for travellers. Great moments for eternity ",
        image: "https://www.multek.com/sites/default/files/styles/news_teaser_style_/public/2017-10/Landing1_0.jpg?itok=_IV-ozIg",
        condition: "Used",
        user_id: 6
    },
    {
        name: "Wall - Projector", 
        category_id: 2,
        description: "Epson EX3260 SVGA 3LCD Projector",
        image: "https://i.pcmag.com/imagery/reviews/05zbkrYHRcLokM4U8DeuS1G-9..v_1569478919.jpg",
        condition: "Used",
        user_id: 3
    },
    {
        name: "Home Theater", 
        category_id: 2,
        description: "LG Home Theater System LHB645N",
        image: "https://www.lg.com/uk/images/home-cinema-systems/md05835810/gallery/LHB645N_large1.jpg",
        condition: "New",
        user_id: 1
    },
    {
        name: "Toolset Kit", 
        category_id: 6,
        description: "",
        image: "https://www.wheellockingnuts.co.uk/167-large_default/toolset-s96.jpg",
        condition: "New",
        user_id: 4
    },
    {
        name: "Skipping Rope", 
        category_id: 8,
        description: " There are multiple subsets of skipping/jump rope, including single freestyle, single speed.",
        image: "https://images-na.ssl-images-amazon.com/images/I/71EgVOWPXpL._AC_SX466_.jpg",
        condition: "Used",
        user_id: 6
    },
    {
        name: "Roller Foam", 
        category_id: 8,
        description: "Used for massage and fitness! ",
        image: "https://cdn.anatomytrains.com/wp-content/uploads/2015/04/trigger-point-performance-the-grid-revolutionary-foam-roller_1.jpg",
        condition: "New",
        user_id: 2
    },
    {
        name: "Bike Cross", 
        category_id: 8,
        description: "CRX500 Cross Bike",
        image: "https://media.4rgos.it/i/Argos/6071026_R_Z003A?w=750&h=440&qlt=70",
        condition: "Used",
        user_id: 2
    },
    {
        name: "Personal Scale", 
        category_id: 8,
        description: "PS240 Personal Non Slip Bathroom Scale",
        image: "https://media.4rgos.it/i/Argos/1679595_R_Z001A?w=750&h=440&qlt=70",
        condition: "",
        user_id: 5
    },
    {
        name: "Pool Table", 
        category_id: 5,
        description: "It comes with extensive range of cabinet colours to choose",
        image: "https://www.madfun.co.uk/media/catalog/product/cache/4/image/9df78eab33525d08d6e5fb8d27136e95/2/4/2450_supreme-winnera-freepl.jpg",
        condition: "Used",
        user_id: 2
    },
    {
        name: "Plastic Swimming pool", 
        category_id: 6,
        description: "I am moving to another house and I don't have enough space",
        image: "https://lh3.googleusercontent.com/proxy/KdSqdB_ZFrSb1MFL3zaZjUnI3hB88QB40nLnqPPjQxdE2lSLUpwWOIJQQ7xi2S1T7NJ5ZpVCSM3q6IrvDdLs4eFXyGi3XOjYm0bXfXmEenT0o3qZ6ds",
        condition: "used",
        user_id: 5
    },
    {
        name: "Game chair", 
        category_id: 4,
        description: "Ideal to play games!",
        image: "https://cdn.game.net/image/upload/dpr_auto,f_auto,q_auto/v1/game_img/ml2/7/5/5/4/755424_gen_a.png",
        condition: "Used",
        user_id: 1
    },
    {
        name: "Chess Board", 
        category_id: 9,
        description: "Great to develop logical skills and relax",
        image: "https://media.4rgos.it/i/Argos/3904567_R_Z001A_UC706239?w=750&h=440&qlt=70",
        condition: "used",
        user_id: 1
    },
    {
        name: "GM SC2 account", 
        category_id: 5,
        description: "Grand Master Star Craft 2 account with everything unblocked, collection edition",
        image: "https://i.imgur.com/Pv4LmFk.jpg",
        condition: "used",
        user_id: 1
    },
    {
        name: "PS4", 
        category_id: 5,
        description: "Just wanna switch the game platform",
        image: "https://cdn.pocket-lint.com/r/s/970x/assets/images/138763-games-review-sony-ps4-pro-review-image1-gcolf3ytme.jpg",
        condition: "used",
        user_id: 1
    },
    {
        name: "Headphone", 
        category_id: 2,
        description: "Venue Noise Canceling Wireless",
        image: "https://cdn11.bigcommerce.com/s-fa8ae9fe8j/products/26/images/1397/fe5679daad7a540a0ecffd38abf2bfa7e097758c15cb12544f83596e7925e919__08531.1542676447.500.750.jpg?c=2",
        condition: "New",
        user_id: 1
    }
])