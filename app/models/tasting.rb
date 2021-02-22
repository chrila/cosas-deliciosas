class Tasting < ApplicationRecord
  belongs_to :serving_format
  belongs_to :beer
  belongs_to :currency

  def rating_str
    '%.1f' % rating
  end
end
