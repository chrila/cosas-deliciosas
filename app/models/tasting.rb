class Tasting < ApplicationRecord
  belongs_to :serving_format
  belongs_to :beer
  belongs_to :currency
end
