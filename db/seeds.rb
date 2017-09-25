200.times do
  name = Faker::GameOfThrones.character
  house = Faker::GameOfThrones.house
  city = Faker::GameOfThrones.city
  quote = Faker::Seinfeld.quote
  avatar = Faker::Avatar.image(name, '50x50', 'png', 'set2')
  Person.create(name: name, house: house, city: city, quote: quote, avatar: avatar)
end
