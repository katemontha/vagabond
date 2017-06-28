# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Post.destroy_all
User.destroy_all
City.destroy_all

user1 = User.create(name: 'Yeni', username: 'Rolita', email: 'yeni@gmail.com', password: 'nosenose', hometown: 'Colombia')
city1 = City.create(name: 'Atlanta')
city2 = City.create(name: 'London')
city3 = City.create(name: 'San Fransico')
posts = Post.create(content: 'Capital of Georgia', user_id: user1.id, city_id: city1.id, picture: 'https://slack-imgs.com/?c=1&url=http%3A%2F%2Fmedia.cntraveler.com%2Fphotos%2F53db017a6dec627b14a123f6%2Fmaster%2Fw_775%2Cc_limit%2Ffairmont-san-francisco-san-francisco-bay-area-california-103124-1.jpg')


