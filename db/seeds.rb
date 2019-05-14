# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first

User.create(
  email: "fritz@refugee-project.com",
  password: "12345678"
)

10.times do
  Question.create(
    title: "This is a random question.",
    text: "This is the text of a random question.",
    user: User.find(1)
  )
end
