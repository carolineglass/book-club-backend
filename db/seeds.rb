# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "destroy users"
User.destroy_all 
puts "destroy clubs"
Club.destroy_all
puts "destroy books"
Book.destroy_all 
puts "destroy user_club"
UserClub.destroy_all
puts "destroy users_book"
UserBook.destroy_all
puts "destroy book_club"
BookClub.destroy_all

# users

srishti = User.create(name: "Srishti", image: "")
caroline = User.create(name: "Caroline", image: "")
eric = User.create(name: "Eric", image: "")
jallen = User.create(name: "Jallen", image: "")
meghann = User.create(name: "Meghann", image: "")
joseph = User.create(name: "Joseph", image: "")
jessica = User.create(name: "Jessica", image: "")
josh = User.create(name: "Josh", image: "")
rosie = User.create(name: "Rosie", image: "")
don = User.create(name: "Don", image: "")
alice = User.create(name: "Alice", image: "")
sofia = User.create(name: "Sofia", image: "")
james = User.create(name: "James", image: "")

# clubs

flatiron = Club.create(
    name: "Flatiron Bookclub", 
    image: "https://s3-us-west-1.amazonaws.com/pathrise-website-guide-wp/guides/wp-content/uploads/2019/12/26173504/36776548_1553913434714928_4773274533622710272_n.png", 
    completed: false,
    meeting: "08/30/2020"
 )

 fiction = Club.create(
    name: "Fiction Fanatics", 
    image: "https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcQm5AxS7KqR_yFJDt9dg6Pmrw-DQh2RM5RPTA&usqp=CAU", 
    completed: false,
    meeting: "07/24/2020"
 )

 girls = Club.create(
    name: "Girls Who Read", 
    image: "https://dejpknyizje2n.cloudfront.net/marketplace/products/retro-rainbow-girl-power-sticker-1564076960.885882.png", 
    completed: false,
    meeting: "07/16/2020"
 )

 mystery_club = Club.create(
    name: "Mystery and Crime",
    image: "https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcSURfxt5eE_xQZNxnB29aOyyufAM9uU-UgSfA&usqp=CAU", 
    completed: false,
    meeting: "09/04/2020"
 )
 
#  books

mockingbird = Book.create(
    title: "To Kill a Mockingbird",
    image: "https://i.gr-assets.com/images/S/compressed.photo.goodreads.com/books/1553383690l/2657.jpg",
    author: "Harper Lee",
    description: "The unforgettable novel of a childhood in a sleepy Southern town and the crisis of conscience that rocked it, To Kill A Mockingbird became both an instant bestseller and a 
    critical success when it was first published in 1960. It went on to win the Pulitzer Prize in 1961 and was later made into an Academy Award-winning film, also a classic.
    Compassionate, dramatic, and deeply moving, To Kill A Mockingbird takes readers to the roots of human behavior - to innocence and experience, kindness and cruelty, love and hatred, humor and pathos. 
    Now with over 18 million copies in print and translated into forty languages, this regional story by a young Alabama woman claims universal appeal. Harper Lee always considered her book to be a simple love story. 
    Today it is regarded as a masterpiece of American literature.",
    genre: "Fiction",
    rating: 4.28
)

orwell = Book.create(
    title: "1984",
    image: "https://i.gr-assets.com/images/S/compressed.photo.goodreads.com/books/1348990566l/5470.jpg",
    author: "George Orwell",
    description: "The year 1984 has come and gone, but George Orwell's prophetic, nightmarish vision in 1949 of the world we were becoming is timelier than ever. 1984 is still the great modern classic of 'negative utopia'—a startlingly original and haunting novel that creates an imaginary world that is completely convincing, from the first sentence to the last four words. No one can deny the novel's hold on the imaginations of whole generations, or the power of its admonitions—a power that seems to grow, not lessen, with the passage of time.",
    genre: "Fiction",
    rating: 4.18
)

crime = Book.create(
    title: "Once Upon a Crime",
    image: "https://i.gr-assets.com/images/S/compressed.photo.goodreads.com/books/1349015477l/112879.jpg",
    author: "Michael Buckley",
    description: "Sabrina and Daphne's adventures continue in their hometown of New York City as they bring Puck to Faerie to cure the wounds. With the help of Granny Relda, the girls must figure out who killed Puck's father, King Oberon, while navigating the warring factions of Everafters that make their homes in every neighbourhood of New York City.",
    genre: "Mystery",
    rating: 4.27
)

thriller = Book.create(
    title: "The Girl on the Train",
    image: "https://i.gr-assets.com/images/S/compressed.photo.goodreads.com/books/1574805682l/22557272.jpg",
    author: "Paula Hawkins",
    description: "Rachel catches the same commuter train every morning. She knows it will wait at the same signal each time, overlooking a row of back gardens. She’s even started to feel like she knows the people who live in one of the houses. “Jess and Jason,” she calls them. Their life—as she sees it—is perfect. If only Rachel could be that happy. And then she sees something shocking. It’s only a minute until the train moves on, but it’s enough. Now everything’s changed. Now Rachel has a chance to become a part of the lives she’s only watched from afar. Now they’ll see; she’s much more than just the girl on the train...",
    genre: "Mystery",
    rating: 3.92
)

pachinko = Book.create(
    title: "Pachinko",
    image: "https://i.gr-assets.com/images/S/compressed.photo.goodreads.com/books/1529845599l/34051011.jpg",
    author: "Min Jin Lee",
    description: "In the early 1900s, teenaged Sunja, the adored daughter of a crippled fisherman, falls for a wealthy stranger at the seashore near her home in Korea. He promises her the world, but when she discovers she is pregnant--and that her lover is married--she refuses to be bought. Instead, she accepts an offer of marriage from a gentle, sickly minister passing through on his way to Japan. But her decision to abandon her home, and to reject her son's powerful father, sets off a dramatic saga that will echo down through the generations.
    Richly told and profoundly moving, Pachinko is a story of love, sacrifice, ambition, and loyalty. From bustling street markets to the halls of Japan's finest universities to the pachinko parlors of the criminal underworld, Lee's complex and passionate characters--strong, stubborn women, devoted sisters and sons, fathers shaken by moral crisis--survive and thrive against the indifferent arc of history.",
    genre: "Historical Fiction",
    rating: 4.27
)

hp1 = Book.create(
    title: "Harry Potter and the Sorceror's Stone",
    image: "https://i.gr-assets.com/images/S/compressed.photo.goodreads.com/books/1474154022l/3._SY475_.jpg",
    author: "J.K.Rowling",
    description: "Harry Potter's life is miserable. His parents are dead and he's stuck with his heartless relatives, who force him to live in a tiny closet under the stairs. But his fortune changes when he receives a letter that tells him the truth about himself: he's a wizard. A mysterious visitor rescues him from his relatives and takes him to his new home, Hogwarts School of Witchcraft and Wizardry.
    After a lifetime of bottling up his magical powers, Harry finally feels like a normal kid. But even within the Wizarding community, he is special. He is the boy who lived: the only person to have ever survived a killing curse inflicted by the evil Lord Voldemort, who launched a brutal takeover of the Wizarding world, only to vanish after failing to kill Harry.
    Though Harry's first year at Hogwarts is the best of his life, not everything is perfect. There is a dangerous secret object hidden within the castle walls, and Harry believes it's his responsibility to prevent it from falling into evil hands. But doing so will bring him into contact with forces more terrifying than he ever could have imagined.",
    genre: "Fantasu Fiction",
    rating: 4.47
)

solitude = Book.create(
    title: "One Hundred Years of Solitude",
    image: "https://i.gr-assets.com/images/S/compressed.photo.goodreads.com/books/1327881361l/320.jpg",
    author: "Gabriel Garcia Marquez",
    description: "The brilliant, bestselling, landmark novel that tells the story of the Buendia family, and chronicles the irreconcilable conflict between the desire for solitude and the need for love—in rich, imaginative prose that has come to define an entire genre known as 'magical realism.'",
    genre: "Magical Realism",
    rating: 4.08
)

gatsby = Book.create(
    title: "The Great Gatsby",
    image: "https://i.gr-assets.com/images/S/compressed.photo.goodreads.com/books/1490528560l/4671._SY475_.jpg",
    author: "F. Scott Fitzgerald",
    description: "The Great Gatsby, F. Scott Fitzgerald's third book, stands as the supreme achievement of his career. This exemplary novel of the Jazz Age has been acclaimed by generations of readers. The story is of the fabulously wealthy Jay Gatsby and his new love for the beautiful Daisy Buchanan, of lavish parties on Long Island at a time when The New York Times noted gin was the national drink and sex the national obsession, it is an exquisitely crafted tale of America in the 1920s.
    The Great Gatsby is one of the great classics of twentieth-century literature.",
    genre: "Fiction",
    rating: 3.92
)

hobbit = Book.create(
    title: "The Hobbit",
    image: "https://i.gr-assets.com/images/S/compressed.photo.goodreads.com/books/1546071216l/5907.jpg",
    author: "J.R.R. Tolkein",
    description: "Written for J.R.R. Tolkien’s own children, The Hobbit met with instant critical acclaim when it was first published in 1937. Now recognized as a timeless classic, this introduction to the hobbit Bilbo Baggins, the wizard Gandalf, Gollum, and the spectacular world of Middle-earth recounts of the adventures of a reluctant hero, a powerful and dangerous ring, and the cruel dragon Smaug the Magnificent. The text in this 372-page paperback edition is based on that first published in Great Britain by Collins Modern Classics (1998), and includes a note on the text by Douglas A. Anderson (2001).",
    genre: "Fantasy Fiction",
    rating: 4.27
)

catcher = Book.create(
    title: "The Catcher in the Rye",
    image: "https://i.gr-assets.com/images/S/compressed.photo.goodreads.com/books/1398034300l/5107.jpg",
    author: "J.D. Salinger",
    description: "The hero-narrator of The Catcher in the Rye is an ancient child of sixteen, a native New Yorker named Holden Caulfield. Through circumstances that tend to preclude adult, secondhand description, he leaves his prep school in Pennsylvania and goes underground in New York City for three days. The boy himself is at once too simple and too complex for us to make any final comment about him or his story. Perhaps the safest thing we can say about Holden is that he was born in the world not just strongly attracted to beauty but, almost, hopelessly impaled on it. There are many voices in this novel: children's voices, adult voices, underground voices-but Holden's voice is the most eloquent of all. Transcending his own vernacular, yet remaining marvelously faithful to it, he issues a perfectly articulated cry of mixed pain and pleasure. However, like most lovers and clowns and poets of the higher orders, he keeps most of the pain to, and for, himself. The pleasure he gives away, or sets aside, with all his heart. It is there for the reader who can handle it to keep. 
    J.D. Salinger's classic novel of teenage angst and rebellion was first published in 1951. The novel was included on Time's 2005 list of the 100 best English-language novels written since 1923. It was named by Modern Library and its readers as one of the 100 best English-language novels of the 20th century. It has been frequently challenged in the court for its liberal use of profanity and portrayal of sexuality and in the 1950's and 60's it was the novel that every teenage boy wants to read.",
    genre: "Fiction",
    rating: 3.81
)


# CREATING THE BOOKS IN EACH CLUB 

BookClub.create(
    club: flatiron,
    book: orwell, 
    active?: true
)

BookClub.create(
    club: flatiron,
    book: pachinko, 
    active?: false
)

BookClub.create(
    club: mystery_club,
    book: crime, 
    active?: true
)

BookClub.create(
    club: mystery_club,
    book: thriller, 
    active?: false
)

BookClub.create(
    club: girls,
    book: thriller, 
    active?: true
)

BookClub.create(
    club: girls,
    book: mockingbird, 
    active?: false
)

BookClub.create(
    club: girls,
    book: orwell, 
    active?: false
)

BookClub.create(
    club: fiction,
    book: orwell, 
    active?: true
)

BookClub.create(
    club: fiction,
    book: mockingbird, 
    active?: true
)

BookClub.create(
    club: fiction,
    book: pachinko, 
    active?: true
)

# CREATING USERS IN THE CLUB 

UserClub.create(
    user: caroline,
    club: girls,
    progress: 4
)

UserClub.create(
    user: srishti,
    club: girls,
    progress: 6
)

UserClub.create(
    user: jessica,
    club: girls,
    progress: 5
)

UserClub.create(
    user: alice,
    club: girls,
    progress: 9
)

UserClub.create(
    user: rosie,
    club: girls,
    progress: 6
)

10.times do 
UserClub.create(
    user: User.all.sample,
    club: Club.all.sample,
    progress: rand(1..10)
)
end

#CREATING USERS BOOKS

boolean_array = [true, false]

20.times do
UserBook.create(
    user: User.all.sample,
    book: Book.all.sample, 
    read?: boolean_array.sample
)
end