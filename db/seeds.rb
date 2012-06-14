# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
State.create([{state: 'New'},
              {state: 'Interview Scheduled'},
              {state: 'Offered'},
              {state: 'Offer Declined'},
              {state: 'Rejected'}])

Candidate.create(name:'Bob T. Kandidate', email: 'bob@email.com')
