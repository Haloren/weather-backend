# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create(email: 'email@email.com')
User.create(email: 'test@test.com')

Location.create(user_id: User.first.id, zip: '85086')
Location.create(user_id: User.first.id, zip: '86337')

Preference.create(user_id: User.first.id, theme:, date_format:, time_format:)
Preference.create(user_id: User.first.id, theme:, date_format:, time_format:)
Preference.create(user_id: User.second.id, theme:, date_format:, time_format:)

Notification.create(user_id: User.first.id, event: 'Birthday', notes: 'Add a Name here', date: '01/01/2021')
Notification.create(user_id: User.first.id, event: 'Anniversery', notes: 'Lol as if', date: '02/28/2021')
Notification.create(user_id: User.second.id, event: 'Holiday', notes: 'Merry Krampus', date: '12/25/2021')