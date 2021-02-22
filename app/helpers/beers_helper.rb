module BeersHelper
  def beers_for_select
    Beer.all.collect { |b| [b.name, b.id] }
  end
end
