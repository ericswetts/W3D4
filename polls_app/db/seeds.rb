# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
u = []
u << User.create(username: "Bob")
u << User.create(username: "Josh")
u << User.create(username: "Qric")
u << User.create(username: "Eric")
u << User.create(username: "jawsh-oshQ")

p = []
p << Poll.create(title: "Sammich poll", author_id: u.first.id)
p << Poll.create(title: "Why is Josh so damn good looking?", author_id: u[1].id)

q = []

q << Question.create(text: "Do you want a sammich?", poll_id: p.first.id)
q << Question.create(text: "What kind of sammich?", poll_id: p.first.id)
q << Question.create(text: "Do you want a mustard sammich, dawg?????!?!?", poll_id: p.first.id)
q << Question.create(text: "Why aren't you as extra-sexy as Josh?", poll_id: p.last.id)
q << Question.create(text: "Why do you think Josh smells like Mahogany and Valhala?", poll_id: p.last.id)

ac = []
ac << AnswerChoice.create(text:"Yes. Dawg.", question_id: q.first.id)
ac << AnswerChoice.create(text:"No. Dawg.", question_id: q.first.id)
ac << AnswerChoice.create(text:"No. I'm a coward, dawg.", question_id: q.first.id)
ac << AnswerChoice.create(text:"Because no one is. Dawg.", question_id: q[3].id)
ac << AnswerChoice.create(text:"No. I'm a coward, coolcat.", question_id: q[3].id)
ac << AnswerChoice.create(text:"Because.", question_id: q[3].id)

r = []
r << Response.create(answer_id: ac.first.id, respondent_id: u.first.id)
r << Response.create(answer_id: ac[1].id, respondent_id: u.first.id)
r << Response.create(answer_id: ac[2].id, respondent_id: u.first.id)
r << Response.create(answer_id: ac[3].id, respondent_id: u.first.id)
r << Response.create(answer_id: ac[2].id, respondent_id: u[1].id)
r << Response.create(answer_id: ac.first.id, respondent_id: u[2].id)
r << Response.create(answer_id: ac.first.id, respondent_id: u[3].id)
r << Response.create(answer_id: ac.first.id, respondent_id: u[4].id)
