json.extract! beer, :id, :brewery_id, :beer_style_id, :ibu, :abv, :created_at, :updated_at
json.url beer_url(beer, format: :json)
