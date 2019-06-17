# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all
UserTrack.destroy_all
Track.destroy_all
s1 = Track.create(artist:"Young Thug", title:"Best Friend", genre:"Hip hop trap", artwork_url: "https://upload.wikimedia.org/wikipedia/en/thumb/0/0b/YoungThugBestFriend.jpg/220px-YoungThugBestFriend.jpg")
u1 = User.create(name: "Richie", password: "poopoo")
ut1 = UserTrack.create(user_id: u1.id, track_id: s1.id)
#       t.string :artist
#       t.string :title
#       t.string :genre
#       t.string :artwork_url