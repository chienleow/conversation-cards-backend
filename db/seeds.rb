# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

rachel = User.create(name: "Rachel")
monica = User.create(name: "Monica")
phoebe = User.create(name: "Phoebe")

question1 = Question.create(sentence: "Would you like to be famous? In what way?", category: "Fun", user_id: rachel.id)
question2 = Question.create(sentence: "Would you rather have a dog with a cat’s personality or a cat with a dog’s personality?", category: "Would you rather", user_id: monica.id)
question3 = Question.create(sentence: "What will finally break the internet?", category: "Random", user_id: phoebe.id)
question4 = Question.create(sentence: "Would you rather be transported permanently 500 years into the future or 500 years into the past?", category: "Would you rather", user_id: rachel.id)
question5 = Question.create(sentence: "What's something not many people know about you?", category: "Deep", user_id: monica.id)
question6 = Question.create(sentence: "What was your worst fashion disaster?", category: "Fun", user_id: phoebe.id)