# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

roommates = Roommate.create(
  [
    {
      name: "Quentin Tarantula",
      location: "Movie room",
      num_of_nightmares: 0
    },
    {
      name: "Peter Parker",
      location: "Guest room",
      num_of_nightmares: 4
    },
    {
      name: "D'aand'mod Av'uggd'gnasz",
      location: "Cellar",
      num_of_nightmares: 79
    },
    {
      name: "Luigi",
      location: "Kitchen",
      num_of_nightmares: 3
    }
  ]
)

Entry.create(
  [
    {
      date: "1992-01-21",
      text: "He suddenly appeared with a movie",
      respect_gained: 10,
      roommate: roommates.first
    },
    {
      date: "1997-06-02",
      text: "He made a website",
      respect_gained: 34,
      roommate: roommates.first
    },
    {
      date: "1998-10-04",
      text: "I liked the web series we watched together",
      respect_gained: 53,
      roommate: roommates.first
    },
    {
      date: "2006-04-15",
      text: "I finally had the courage to ask him how do other spiders find a partner? He said they usually meet on the web!",
      respect_gained: 65,
      roommate: roommates.first
    },
    {
      date: "2010-01-21",
      text: "We had our 18th anniversary!",
      respect_gained: 99,
      roommate: roommates.first
    }
  ]
)