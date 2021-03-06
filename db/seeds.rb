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
  {title: 'Guitar', level: 1, category: category[0], author_id: user[0].id, passing_time: 1},
  {title: 'Piano', level: 2, category: category[0], author_id: user[0].id, passing_time: 1},
  {title: 'Mammals', level: 3, category: category[1], author_id: user[0].id},
  {title: 'Reptiles', level: 4, category: category[1], author_id: user[0].id},
  {title: 'Comedies', level: 5, category: category[2], author_id: user[0].id},
  {title: 'Thrillers', level: 6, category: category[2], author_id: user[0].id}])

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
   image_url: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSHmq7PDvbiKIfOsHUf8ObA1i99hnCTVgBCXw&usqp=CAU',
   rule: 'all_in_category', parameter: category[0].title},
  {title: 'Выполнены все тесты категории',
    image_url: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSHmq7PDvbiKIfOsHUf8ObA1i99hnCTVgBCXw&usqp=CAU',
    rule: 'all_in_category', parameter: category[1].title},
  {title: 'Выполнены все тесты категории',
    image_url: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSHmq7PDvbiKIfOsHUf8ObA1i99hnCTVgBCXw&usqp=CAU',
    rule: 'all_in_category', parameter: category[2].title},

  {title: 'С первого раза выполнен тест',
    image_url: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSjm752f-xtzCUDL-oGrpOA6U_44SX2MT4RPA&usqp=CAU',
    rule: 'on_first_try', parameter: test[0].title},
  {title: 'С первого раза выполнен тест',
    image_url: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSjm752f-xtzCUDL-oGrpOA6U_44SX2MT4RPA&usqp=CAU',
    rule: 'on_first_try', parameter: test[1].title},
  {title: 'С первого раза выполнен тест',
    image_url: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSjm752f-xtzCUDL-oGrpOA6U_44SX2MT4RPA&usqp=CAU',
    rule: 'on_first_try', parameter: test[2].title},
  {title: 'С первого раза выполнен тест',
  image_url: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSjm752f-xtzCUDL-oGrpOA6U_44SX2MT4RPA&usqp=CAU',
    rule: 'on_first_try', parameter: test[3].title},
  {title: 'С первого раза выполнен тест',
    image_url: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSjm752f-xtzCUDL-oGrpOA6U_44SX2MT4RPA&usqp=CAU',
    rule: 'on_first_try', parameter: test[4].title},
  {title: 'С первого раза выполнен тест',
    image_url: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSjm752f-xtzCUDL-oGrpOA6U_44SX2MT4RPA&usqp=CAU',
    rule: 'on_first_try', parameter: test[5].title},

  {title: 'Выполнил все тесты уровня',
    image_url: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTrLy7GHeHc16ZEOoMXF_0iC6AdR6bfLgXX-Q&usqp=CAU',
    rule: 'all_tests_by_level', parameter: 1},
  {title: 'Выполнил все тесты уровня',
    image_url: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTrLy7GHeHc16ZEOoMXF_0iC6AdR6bfLgXX-Q&usqp=CAU',
    rule: 'all_tests_by_level', parameter: 2},
  {title: 'Выполнил все тесты уровня',
    image_url: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTrLy7GHeHc16ZEOoMXF_0iC6AdR6bfLgXX-Q&usqp=CAU',
    rule: 'all_tests_by_level', parameter: 3},
  {title: 'Выполнил все тесты уровня',
    image_url: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTrLy7GHeHc16ZEOoMXF_0iC6AdR6bfLgXX-Q&usqp=CAU',
    rule: 'all_tests_by_level', parameter: 4},
  {title: 'Выполнил все тесты уровня',
    image_url: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTrLy7GHeHc16ZEOoMXF_0iC6AdR6bfLgXX-Q&usqp=CAU',
    rule: 'all_tests_by_level', parameter: 5},
  {title: 'Выполнил все тесты уровня',
    image_url: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTrLy7GHeHc16ZEOoMXF_0iC6AdR6bfLgXX-Q&usqp=CAU',
    rule: 'all_tests_by_level', parameter: 6}])
