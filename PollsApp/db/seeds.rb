# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user1 = User.create(user_name: "John")
user2 = User.create(user_name: "Jeff")
user3 = User.create(user_name: "Jingle")
user4 = User.create(user_name: "Smith")

poll2 = Poll.create(author_id: user1.id, title: "Fave color")
poll3 = Poll.create(author_id: user3.id, title: "Current politics")

question3 = Question.create(text: "favorite primary color?", poll_id: poll2.id)
question4 = Question.create(text: "political affiliation?", poll_id: poll3.id)
question5 = Question.create(text: "support banning assault rifles?", poll_id: poll3.id)
question6 = Question.create(text: "how often do you vote?", poll_id: poll3.id)

answer1 = AnswerChoice.create(answer: "blue", question_id: question3.id)
answer2 = AnswerChoice.create(answer: "red", question_id: question3.id)
answer3 = AnswerChoice.create(answer: "yellow", question_id: question3.id)

answer4 = AnswerChoice.create(answer: "Democrat", question_id: question4.id)
answer5 = AnswerChoice.create(answer: "Republican", question_id: question4.id)
answer6 = AnswerChoice.create(answer: "Libertarian", question_id: question4.id)

answer7 = AnswerChoice.create(answer: "yes", question_id: question5.id)
answer8 = AnswerChoice.create(answer: "no", question_id: question5.id)

answer9 = AnswerChoice.create(answer: "what's voting?", question_id: question6.id)
answer10 = AnswerChoice.create(answer: "just presidential elections", question_id: question6.id)
answer11 = AnswerChoice.create(answer: "all elections, even local", question_id: question6.id)

response1 = Response.create(user_id: user1.id, answer_id: answer3.id)
response2 = Response.create(user_id: user2.id, answer_id: answer2.id)
response3 = Response.create(user_id: user3.id, answer_id: answer1.id)
response4 = Response.create(user_id: user4.id, answer_id: answer2.id)

response5 = Response.create(user_id: user2.id, answer_id: answer4.id)
response6 = Response.create(user_id: user3.id, answer_id: answer5.id)

response7 = Response.create(user_id: user1.id, answer_id: answer8.id)

response9 = Response.create(user_id: user4.id, answer_id: answer9.id)

