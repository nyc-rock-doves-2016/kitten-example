require 'faker'

u1 = User.create!(name: 'Joanna', password:'password')
u2 = User.create!(name: 'Patrick', password:'password')
u3 = User.create!(name: 'Yolanda', password:'password')
u4 = User.create!(name: 'Erin', password:'password')

users = User.all
breeds = [ 'American Shorthair', 'Persian', 'Siamese', 'Egyptian', 'Tabby', 'Tortoiseshell' ]
temps = [ 'angry', 'happy', 'compliant', 'vicious', 'downright mean', 'adorable']
users.each do | u |
   5.times do
    cat = u.cats.create!(name: Faker::Name.first_name,
      breed: breeds.sample,
      date_of_birth: Faker::Date.between(5.years.ago, Date.today),
      temperament: temps.sample)
  end
end