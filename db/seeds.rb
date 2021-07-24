# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
user = User.create([
  {first_name: 'Ivan', last_name: 'Bakhmetov', skill: 3, email: 'req12345678@gmail.com', password: 'qweszxc', type: 'Admin'}])

category = Category.create([
  {title: 'Music'},
  {title: 'Animals'},
  {title: 'Films'}])

test = Test.create([
  {title: 'Guitar', level: 1, category: category[0], author_id: user[0].id},
  {title: 'Piano', level: 2, category: category[0], author_id: user[0].id},
  {title: 'Mammals', level: 3, category: category[1], author_id: user[0].id},
  {title: 'Reptiles', level: 4, category: category[1], author_id: user[0].id},
  {title: 'Comedies', level: 5, category: category[2], author_id: user[0].id},
  {title: 'Thriller', level: 6, category: category[2], author_id: user[0].id}])

question = Question.create([
  {body: 'Guitar question № 1', test: test[0]},
  {body: 'Guitar question № 2', test: test[0]},
  {body: 'Guitar question № 3', test: test[0]},
  {body: 'Piano question № 1', test: test[1]},
  {body: 'Piano question № 2', test: test[1]},
  {body: 'Piano question № 3', test: test[1]},
  {body: 'Mammals question № 1', test: test[2]},
  {body: 'Mammals question № 2', test: test[2]},
  {body: 'Mammals question № 3', test: test[2]},
  {body: 'Reptiles question № 1', test: test[3]},
  {body: 'Reptiles question № 2', test: test[3]},
  {body: 'Reptiles question № 3', test: test[3]},
  {body: 'Comedies question № 1', test: test[4]},
  {body: 'Comedies question № 2', test: test[4]},
  {body: 'Comedies question № 3', test: test[4]},
  {body: 'Thriller question № 1', test: test[5]},
  {body: 'Thriller question № 2', test: test[5]},
  {body: 'Thriller question № 3', test: test[5]}])

answer = Answer.create([
  {body: 'Guitar Answer № 1 for question № 1', question: question[0]},
  {body: 'Guitar Answer № 2 for question № 1', question: question[0]},
  {body: 'Guitar Answer № 3 for question № 1', question: question[0], correct: true},
  {body: 'Guitar Answer № 1 for question № 2', question: question[1]},
  {body: 'Guitar Answer № 2 for question № 2', question: question[1]},
  {body: 'Guitar Answer № 3 for question № 2', question: question[1], correct: true},
  {body: 'Guitar Answer № 1 for question № 3', question: question[2]},
  {body: 'Guitar Answer № 2 for question № 3', question: question[2]},
  {body: 'Guitar Answer № 3 for question № 3', question: question[2], correct: true},
  {body: 'Piano Answer № 1 for question № 1', question: question[3]},
  {body: 'Piano Answer № 2 for question № 1', question: question[3]},
  {body: 'Piano Answer № 3 for question № 1', question: question[3], correct: true},
  {body: 'Piano Answer № 1 for question № 2', question: question[4]},
  {body: 'Piano Answer № 2 for question № 2', question: question[4]},
  {body: 'Piano Answer № 3 for question № 2', question: question[4], correct: true},
  {body: 'Piano Answer № 1 for question № 3', question: question[5]},
  {body: 'Piano Answer № 2 for question № 3', question: question[5]},
  {body: 'Piano Answer № 3 for question № 3', question: question[5], correct: true},
  {body: 'Mammals Answer № 1 for question № 1', question: question[6]},
  {body: 'Mammals Answer № 2 for question № 1', question: question[6]},
  {body: 'Mammals Answer № 3 for question № 1', question: question[6], correct: true},
  {body: 'Mammals Answer № 1 for question № 2', question: question[7]},
  {body: 'Mammals Answer № 2 for question № 2', question: question[7]},
  {body: 'Mammals Answer № 3 for question № 2', question: question[7], correct: true},
  {body: 'Mammals Answer № 1 for question № 3', question: question[8]},
  {body: 'Mammals Answer № 2 for question № 3', question: question[8]},
  {body: 'Mammals Answer № 3 for question № 3', question: question[8], correct: true},
  {body: 'Reptiles Answer № 1 for question № 1', question: question[9]},
  {body: 'Reptiles Answer № 2 for question № 1', question: question[9]},
  {body: 'Reptiles Answer № 3 for question № 1', question: question[9], correct: true},
  {body: 'Reptiles Answer № 1 for question № 2', question: question[10]},
  {body: 'Reptiles Answer № 2 for question № 2', question: question[10]},
  {body: 'Reptiles Answer № 3 for question № 2', question: question[10], correct: true},
  {body: 'Reptiles Answer № 1 for question № 3', question: question[11]},
  {body: 'Reptiles Answer № 2 for question № 3', question: question[11]},
  {body: 'Reptiles Answer № 3 for question № 3', question: question[11], correct: true},
  {body: 'Comedies Answer № 1 for question № 1', question: question[12]},
  {body: 'Comedies Answer № 2 for question № 1', question: question[12]},
  {body: 'Comedies Answer № 3 for question № 1', question: question[12], correct: true},
  {body: 'Comedies Answer № 1 for question № 2', question: question[13]},
  {body: 'Comedies Answer № 2 for question № 2', question: question[13]},
  {body: 'Comedies Answer № 3 for question № 2', question: question[13], correct: true},
  {body: 'Comedies Answer № 1 for question № 3', question: question[14]},
  {body: 'Comedies Answer № 2 for question № 3', question: question[14]},
  {body: 'Comedies Answer № 3 for question № 3', question: question[14], correct: true},
  {body: 'Thriller Answer № 1 for question № 1', question: question[15]},
  {body: 'Thriller Answer № 2 for question № 1', question: question[15]},
  {body: 'Thriller Answer № 3 for question № 1', question: question[15], correct: true},
  {body: 'Thriller Answer № 1 for question № 2', question: question[16]},
  {body: 'Thriller Answer № 2 for question № 2', question: question[16]},
  {body: 'Thriller Answer № 3 for question № 2', question: question[16], correct: true},
  {body: 'Thriller Answer № 1 for question № 3', question: question[17]},
  {body: 'Thriller Answer № 2 for question № 3', question: question[17]},
  {body: 'Thriller Answer № 3 for question № 3', question: question[17], correct: true}])

Badge.create([
             {title: 'Выполнены все тесты категории Музыка', image_url: 'http://clipart-library.com/2018-gallery/unicorn-clipart-16.png', rule: 'all_in_category_music'},
             {title: 'Выполнен с первого раза!', image_url: 'http://clipart-library.com/images/kc8n9zKcr.jpg', rule: 'on_first_try'},
             {title: 'Выполнил все тесты 1 уровня!', image_url: 'http://clipart-library.com/images/ziXeX8r8T.gif', rule: 'all_level_1_tests'}])

UserBadge.create([
  {user_id: user[0], badge_id: badge[0]},
  {user_id: user[0], badge_id: badge[1]},
  {user_id: user[0], badge_id: badge[2]}])
