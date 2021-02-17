module BreweriesHelper
  def breweries_for_select
    Brewery.all.collect { |b| [b.name, b.id] }
  end
end
