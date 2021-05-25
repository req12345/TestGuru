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
  {title: 'Ruby'},
  {title: 'C++', level: 2},
  {title: 'Python', level: 3},
  {title: 'JavaScript', level: 2},
  {title: 'CSS', level: 0}])

question = Question.create([
  {body: "What month and year the 'Ruby' was invented?"},
  {body: "What month and year the 'C++' was invented?"},
  {body: "What month and year the 'Python' was invented?"},
  {body: "What month and year the 'JavaScript' was invented?"},
  {body: "What month and year the 'HTML' was invented?"}])

answer = Answers.create([
  {body: 'february 1993'},
  {body: 'october 1985'},
  {body: 'february 1991'}
  {body: 'december 1995'}
  {body: 'december 1996'}])
