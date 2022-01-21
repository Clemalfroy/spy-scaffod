require 'faker'

Secret.destroy_all
Mission.destroy_all
Spy.destroy_all

SPY_ALPHABET = ['-', '.']

def create_description(min_char, max_char)
  (Array.new(rand(min_char..max_char)) { SPY_ALPHABET.sample }).join
end

50.times do
  spy = Spy.create(name: Faker::Creature::Animal.unique.name, arrival_date: Date.today-rand(1000), image: Faker::Avatar.image)
  rand(1..4).times do
    Mission.create(name: Faker::Movie.title, description: create_description(20, 100), spy: spy)
  end
end


Mission.find_each do |mission|
  rand(1..10).times do
    Secret.create(source: Faker::Music.album, description: create_description(50, 200), mission: mission)
  end
end
