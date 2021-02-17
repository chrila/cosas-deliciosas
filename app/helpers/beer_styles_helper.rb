module BeerStylesHelper
  def beer_styles_for_select
    BeerStyle.all.collect { |b| [b.name, b.id] }
  end
end
