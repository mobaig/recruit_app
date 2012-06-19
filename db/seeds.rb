# Candidate states:
State.find_or_create_by_state(state: 'New')
State.find_or_create_by_state(state: 'Interview Scheduled')
State.find_or_create_by_state(state: 'Offered')
State.find_or_create_by_state(state: 'Offer Declined')
State.find_or_create_by_state(state: 'Rejected')

# Example candidate:
1.times do
  name = Faker::Name.name
  email = Faker::Internet.email
  Candidate.create(name: name, email: email)
end
