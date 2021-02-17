require 'faker'

10.times do
  BeerStyle.create(name: Faker::Beer.unique.style)
end

10.times do
  Brewery.create(name: Faker::Beer.unique.brand, location: Faker::Address.unique.city)
end

50.times do
  style = BeerStyle.find_by(id: rand(1..BeerStyle.last.id))
  brewery = Brewery.find_by(id: rand(1..Brewery.last.id))
  Beer.create(brewery: brewery, name: Faker::Beer.unique.name, beer_style: style, ibu: rand(10..100), abv: (rand(40..80)*0.1).round(1))
end
