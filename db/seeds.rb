require 'faker'

# beer styles
10.times do
  BeerStyle.create(name: Faker::Beer.unique.style)
end

# breweries
10.times do
  Brewery.create(name: Faker::Beer.unique.brand, location: Faker::Address.unique.city)
end

# beers
50.times do
  style = BeerStyle.find_by(id: rand(1..BeerStyle.last.id))
  brewery = Brewery.find_by(id: rand(1..Brewery.last.id))
  Beer.create(brewery: brewery, name: Faker::Beer.unique.name, beer_style: style, ibu: rand(10..100), abv: rand(4.0..8.0).round(1))
end

# serving formats
ServingFormat.create(name: 'Draft - pint')
ServingFormat.create(name: 'Can - 330 ml')
ServingFormat.create(name: 'Can - 500 ml')
ServingFormat.create(name: 'Bottle - 330 ml')
ServingFormat.create(name: 'Bottle - 500 ml')

# currencies
Currency.create(code: 'EUR', name: 'Euro', symbol: '€')
Currency.create(code: 'USD', name: 'US Dollar', symbol: '$')
Currency.create(code: 'CLP', name: 'Chilean peso', symbol: '$')

# tastings
30.times do
  serving_format = ServingFormat.find_by(id: rand(1..ServingFormat.last.id))
  beer = Beer.find_by(id: rand(1..Beer.last.id))
  currency = Currency.find_by(code: 'EUR')
  Tasting.create(
    place: Faker::Restaurant.name,
    rating: rand(1.0..10.0).round(1),
    price: rand(3.0..10.0).round(1),
    currency: currency,
    comment: Faker::Hipster.sentence,
    beer: beer,
    serving_format: serving_format)
end
