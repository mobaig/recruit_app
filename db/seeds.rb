# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
State.create(state: 'New')
State.create(state: 'Interview Scheduled')
State.create(state: 'Offered')
State.create(state: 'Offer Declined')
State.create(state: 'Rejected')


20.times do
  name = Faker::Name.name
  email = Faker::Internet.email
  Candidate.create(name: name, email: email)
end
