class Currency < ApplicationRecord
  def to_s
    symbol
  end
end
