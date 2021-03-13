class Tasting < ApplicationRecord
  belongs_to :serving_format
  belongs_to :beer
  belongs_to :currency

  validates :beer, presence: true
  validates :place, presence: true
  validates :price, presence: true
  validates :rating, presence: true

  def rating_str
    '%.1f' % rating
  end
end
