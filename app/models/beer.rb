class Beer < ApplicationRecord
  belongs_to :brewery
  belongs_to :beer_style

  def abv_str
    "#{abv} %"
  end

  def to_s
    "#{brewery} #{name}"
  end
end
