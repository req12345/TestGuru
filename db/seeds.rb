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
             {title: 'Выполнены все тесты категории',
               image_url: 'data:image/png;base64,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',
               rule: 'all_in_category', parameter: 1},
             {title: 'С первого раза выполнен тест',
               image_url: 'data:image/png;base64,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',
               rule: 'on_first_try',
               parameter: nil},
             {title: 'Выполнил все тесты уровня',
               image_url: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTrLy7GHeHc16ZEOoMXF_0iC6AdR6bfLgXX-Q&usqp=CAU',
               rule: 'all_tests_by_level',
               parameter: 1}])
