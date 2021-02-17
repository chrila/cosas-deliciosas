class Beer < ApplicationRecord
  belongs_to :brewery
  belongs_to :beer_style

  def abv_str
    "#{self.abv} %"
  end
end
