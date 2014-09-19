# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


User.create!(name: 'tyler', last_login_at:   1.day.ago)
User.create!(name: 'marla', last_login_at:  5.days.ago)
User.create!(name: 'bob',   last_login_at:  9.days.ago)
User.create!(name: 'tom',   last_login_at: 20.days.ago)
User.create!(name: 'mike',  last_login_at: 50.days.ago)
