require 'faker'

# Create 10 cities
10.times do
  city = City.create!(city_name: Faker::Address.city)
  # for city each add 1 to 9 dogsitters and 2 to 20 dogs
  (rand(8) + 1).times { Dogsitter.create!(name: Faker::Community.characters, city_id: city.id) }
  (rand(18) + 2).times { Dog.create!(name: Faker::FamilyGuy.character, race: Faker::Food.vegetables, owner: Faker::Simpsons.character, city_id: city.id) }
end

# add a stroll for each dog
Dog.all.each do |dog|
  sitter = Dogsitter.where(city_id: dog.city_id).first
  Stroll.create!(stroll_name: Faker::Simpsons.location, dog_id: dog.id, dogsitter_id: sitter.id)
end