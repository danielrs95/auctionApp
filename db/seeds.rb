# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Product.create(
  name: "Lapicero",
  description: "Un fabuloso lapicero para grabar bellos momentos",
  image: "./images/lapicero.png",
  price:48.5,
  auctionDate: DateTime.strptime("03/23/2021 17:00", "%m/%d/%Y %H:%M"),
  startingDate: DateTime.strptime("03/23/2021 17:00", "%m/%d/%Y %H:%M"),
  endingDate: DateTime.strptime("03/23/2021 20:00", "%m/%d/%Y %H:%M")
  )

User.create(
  name: "Admin",
  email:"admin@example.com",
  password: "123456",
  admin: true
)