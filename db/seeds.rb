# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all
Location.destroy_all
Notification.destroy_all

User.create(email: 'email@email.com')

Location.create(user_id: User.first.id, zip: '85086')
Location.create(user_id: User.first.id, zip: '86337')

Notification.create(user_id: User.first.id, event: 'Birthday', notes: 'Add a Name here', date: '01/01/2021')
Notification.create(user_id: User.first.id, event: 'Anniversary', notes: 'Lol of what?', date: '02/02/2021')
Notification.create(user_id: User.second.id, event: 'Holiday', notes: 'Merry Krampus', date: '12/12/2021')