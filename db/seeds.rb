# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
user = User.create([
  {name: 'Roland Deschain', skill: 3},
  {name: 'Eddie Dean'},
  {name: 'Susannah Dean', skill: 2},
  {name: 'Oy', skill: 1},
  {name: 'Jake Chambers'}])

category = Category.create([
  {title: 'Front-end'},
  {title: 'Back-end'},
  {title: 'Mobile'}])

test = Test.create([
  {title: 'Ruby', level: 1, category_id: category[1].id, author_id: user[1].id},
  {title: 'C++', level: 2, category_id: category[1].id, author_id: user[1].id},
  {title: 'Python', level: 4, category_id: category[2].id, author_id: user[0].id},
  {title: 'JavaScript', level: 6, category_id: category[0].id, author_id: user[0].id},
  {title: 'CSS', level: 0, category_id: category[0].id, author_id: user[0].id}])

question = Question.create([
  {body: "What month and year the 'Ruby' was invented?", test_id: test[0].id},
  {body: "What month and year the 'C++' was invented?", test_id: test[1].id},
  {body: "What month and year the 'Python' was invented?", test_id: test[2].id},
  {body: "What month and year the 'JavaScript' was invented?", test_id: test[3].id},
  {body: "What month and year the 'HTML' was invented?", test_id: test[4].id}])

answer = Answer.create([
  {body: 'february 1993', question_id: question[0].id},
  {body: 'october 1985', question_id: question[1].id},
  {body: 'february 1991', question_id: question[2].id},
  {body: 'december 1995', question_id: question[3].id},
  {body: 'december 1996', question_id: question[4].id}])

user_test = UsersTest.create([
  {user_id: user[0].id, test_id: test[0].id},
  {user_id: user[0].id, test_id: test[1].id},
  {user_id: user[0].id, test_id: test[3].id},
  {user_id: user[1].id, test_id: test[4].id},
  {user_id: user[1].id, test_id: test[3].id},
  {user_id: user[1].id, test_id: test[2].id}
  ])
