class Beer < ApplicationRecord
  belongs_to :brewery
  belongs_to :beer_style

  validates :brewery, presence: true
  validates :beer_style, presence: true
  validates :name, presence: true

  def abv_str
    "#{abv} %"
  end

  def to_s
    "#{brewery} #{name}"
  end
end
